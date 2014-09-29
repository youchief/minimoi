<?php

App::uses('Controller', 'Controller');

class AppController extends Controller {

        public $helpers = array('Markdown');
        
        private $sales_actions  = array('scan', 'set_status', 'view', 'logout', 'display');
        
        public $components = array(
            'Session',
            'Auth' => array(
                'loginRedirect' => array(
                    'controller' => 'pages',
                    'action' => 'display',
                    'welcome',
                    'admin'=>false
                ),
                'logoutRedirect' => array(
                    'controller' => 'pages',
                     'action' => 'display',
                    'home',
                    'admin'=>false
                ),
                'loginAction' => array(
                    'controller' => 'users',
                    'action' => 'login',
                    'admin' => false
                ),
                'authenticate' => array(
                    'Form' => array(
                        'passwordHasher' => 'Blowfish'
                    )
                ),
                'authorize' => array('Controller')
            )
        );

        public function isAuthorized($user) {
                // Admin can access every action
                //debug($user);
                
                if ($user['Group']['name']=='admin') {
                        return true;
                }
                
                if ($user['Group']['name']=='sales') {
                        
                        if(in_array($this->action, $this->sales_actions)){
                                return true;
                        }
                }
                

                // Default deny
                return false;
        }

        public function beforeFilter() {
                
                $this->Auth->allow('display');
                
                if ($this->Auth->user('group_id') == 1) {
                        $this->set('header', 'admin');
                } else if ($this->Auth->user('group_id') == 2) {
                        $this->set('header', 'sales');
                } else {
                        $this->set('header', 'default');
                }
        }

}
