<?php

App::uses('AppController', 'Controller');
App::uses('Folder', 'Utility');

/**
 * Bons Controller
 *
 * @property Bon $Bon
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class BonsController extends AppController {

    /**
     * Components
     *
     * @var array
     */
    public $components = array('Paginator', 'Session');
    
    
    private function _saveAsPdf( $pdf, $fileName ) {

        $folder = new Folder(APP . DS . 'prints', true, 0755);
        $pdf->Output($folder->path . DS . $fileName);

        $this->viewClass = 'Media';
        $params = array(
            'id' => $fileName,
            'name' => substr($fileName,0,-4),
            'download' => true,
            'extension' => 'pdf',
            'path' => $folder->path . DS
        );
        $this->set($params);
    }
    
    public function admin_generate( ){
        
        // print here with post element
        if ($this->request->is('post')) {
            
            if($this->request->data['Bon']['image']['error'] != 0){
                return $this->Session->setFlash(__('File upload failed!'), 'default', array('class' => 'alert alert-danger')); 
            }
            
            $bon = $this->Bon->find('first', array(
                'order' => 'Bon.id DESC'
            ));
            $startNumber = (!empty($bon)) ? ( $bon['Bon']['key'] + 1 ) : 17300000;
            $number = $startNumber + $this->request->data['Bon']['number'];
            $data = array();
            
            $path = APP . 'tickets';
            $fileName = 'bons_' . date("d-m-y") . '_' . ( $startNumber ) . '_' . ( $startNumber + $number - 1) . '.pdf';
            
            if (class_exists('CardWithBarCode') != true)
            require_once(APP . DS . 'Vendor' .DS. '3xw'. DS . 'print' . DS . 'CardWithBarCode.php');
            
            $pdf = new CardWithBarCode( $this->request->data['Bon']['image']['tmp_name'], APP . DS . 'Vendor' .DS. '3xw'. DS . 'print' . DS . 'font' . DS . 'Arial.ttf');
            $pdf->Open();
            $pdf->SetTitle('Bons, generated on '.date("d.m.Y"));
            $pdf->SetAuthor('3xw');
            $pdf->SetAutoPageBreak(true);
            
            for( $i = $startNumber; $i < $number; $i++  ){
                $pdf->AddPage();
                $pdf->printCard( $i );
                $data[] = array(
                    'key' => $i,
                    'amount' => $this->request->data['Bon']['amount'],
                    'description' => $this->request->data['Bon']['description'],
                    'end' => $this->request->data['Bon']['end'],
                    'status' => $this->request->data['Bon']['status']
                );
            }
            $this->Bon->saveAll($data);
            $this->_saveAsPdf( $pdf, $fileName );
        }
        
        
    }
    
    
    /**
     * admin_index method
     *
     * @return void
     */
    public function admin_index() {
        $this->Bon->recursive = 0;
        $this->set('bons', $this->Paginator->paginate());
    }

    public function admin_scan() {
        if ($this->request->is('post')) {
            $bon = $this->Bon->findByKey($this->request->data['Bon']['key']);

            if (!empty($bon)) {
                $this->redirect(array('action' => 'view', $bon['Bon']['id']));
            } else {
                $this->Session->setFlash(__('Not found!'), 'default', array('class' => 'alert alert-danger'));
            }
        }
    }

    public function scan() {
        if ($this->request->is('post')) {
            $bon = $this->Bon->findByKey($this->request->data['Bon']['key']);

            if (!empty($bon)) {
                $this->redirect(array('action' => 'view', $bon['Bon']['id']));
            } else {
                $this->Session->setFlash(__('Not found!'), 'default', array('class' => 'alert alert-danger'));
            }
        }
    }

    public function set_status($bon_id) {
        $this->Bon->read(null, $bon_id);
        $this->Bon->set(array(
            'status' => 'USED',
            'used' => date('Y-m-d h:i:s', time())
        ));
        $this->Bon->save();
        $this->Session->setFlash(__('Le bon est comptabilisé!'), 'default', array('class' => 'alert alert-success'));
        return $this->redirect(array('action' => 'scan'));
    }

    public function view($id = null) {
        if (!$this->Bon->exists($id)) {
            throw new NotFoundException(__('Invalid bon'));
        }
        $options = array('conditions' => array('Bon.' . $this->Bon->primaryKey => $id));
        $this->set('bon', $this->Bon->find('first', $options));
    }

    /**
     * admin_view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_view($id = null) {
        if (!$this->Bon->exists($id)) {
            throw new NotFoundException(__('Invalid bon'));
        }
        $options = array('conditions' => array('Bon.' . $this->Bon->primaryKey => $id));
        $this->set('bon', $this->Bon->find('first', $options));
    }

    /**
     * admin_add method
     *
     * @return void
     */
    public function admin_add() {
        if ($this->request->is('post')) {
            $this->Bon->create();
            if ($this->Bon->save($this->request->data)) {
                $this->Session->setFlash(__('The bon has been saved'), 'default', array('class' => 'alert alert-success'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The bon could not be saved. Please, try again.'), 'default', array('class' => 'alert alert-alert'));
            }
        }
    }

    /**
     * admin_edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_edit($id = null) {
        if (!$this->Bon->exists($id)) {
            throw new NotFoundException(__('Invalid bon'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->Bon->save($this->request->data)) {
                $this->Session->setFlash(__('The bon has been saved'), 'default', array('class' => 'alert alert-success'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The bon could not be saved. Please, try again.'), 'default', array('class' => 'alert alert-danger'));
            }
        } else {
            $options = array('conditions' => array('Bon.' . $this->Bon->primaryKey => $id));
            $this->request->data = $this->Bon->find('first', $options);
        }
    }

    /**
     * admin_delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_delete($id = null) {
        $this->Bon->id = $id;
        if (!$this->Bon->exists()) {
            throw new NotFoundException(__('Invalid bon'));
        }
        $this->request->onlyAllow('post', 'delete');
        if ($this->Bon->delete()) {
            $this->Session->setFlash(__('Bon deleted'), 'default', array('class' => 'alert alert-success'));
            return $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Bon was not deleted'), 'default', array('class' => 'alert alert-danger'));
        return $this->redirect(array('action' => 'index'));
    }

}
