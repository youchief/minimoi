<?php

define('FPDF_FONTPATH', 'font/');
require_once('fpdf.php');

// Including all required classes
require_once('class/BCGFont.php');
require_once('class/BCGColor.php');
require_once('class/BCGDrawing.php');

// Including the barcode technology
require_once('class/BCGcode39.barcode.php');

class CardWithBarCode extends FPDF {

    var $document_width = 86;//54;
    var $document_height = 54;//86;
    var $bgPath;
    var $fontPath;
    
    function CardWithBarCode($bgPath, $fontPath) {
        $this->FPDF('P','mm',array( $this->document_width, $this->document_height ));
        $this->bgPath = $bgPath;
        $this->fontPath = $fontPath;
    }
    
    function getImageType( $img ){
        $imageType = exif_imagetype($img);
        $ext = 'jpg';
        $input_file = $img;
        $output_file = $img.'__';
        
        switch($imageType){
            
            case IMAGETYPE_JPEG:
                break;
            
            case IMAGETYPE_GIF:
                $input = imagecreatefromgif($input_file);

            
            case IMAGETYPE_PNG:
                $input = imagecreatefrompng($input_file);
                
            default:  
                
                list($width, $height) = getimagesize($input_file);
                $output = imagecreatetruecolor($width, $height);
                $white = imagecolorallocate($output,  255, 255, 255);
                imagefilledrectangle($output, 0, 0, $width, $height, $white);
                imagecopy($output, $input, 0, 0, 0, 0, $width, $height);
                imagejpeg($output, $output_file);
                rename($output_file, $input_file);
                
                break;
        }
        
        return $ext;
    }
    
    public function createCode( $code ){
        // Loading Font
        $font = new BCGFont($this->fontPath, 20);
        $color_black = new BCGColor(0, 0, 0);
        $color_white = new BCGColor(255, 255, 255);

        $bCode = new BCGcode39();
        $bCode->setScale(2); // Resolution
        $bCode->setThickness(40); // Thickness
        $bCode->setForegroundColor($color_black); // Color of bars
        $bCode->setBackgroundColor($color_white); // Color of spaces
        $bCode->SetFont($font); // Font (or 0)
        $bCode->parse($code); // Text

        /* Here is the list of the arguments
          1 - Filename (empty : display on screen)
          2 - Background color */
        $drawing = new BCGDrawing("./temp$code.jpg", $color_white);
        $drawing->setBarcode($bCode);
        $drawing->draw();
        $drawing->finish(BCGDrawing::IMG_FORMAT_JPEG);
    }
    
    public function deleteCode( $code ){
        unlink("./temp$code.jpg");
    }
    
    function printCard( $code ) {
        
        // print bg
        if (file_exists($this->bgPath)) {
            $ext = $this->getImageType($this->bgPath);
            $this->Image($this->bgPath, 0, 0, $this->document_width, $this->document_height, $ext);
        }
        
        $x = 23;
        $y = 32;
        // Bar Code
        if(!empty($code)){
            $this->createCode( $code );
            if (file_exists("./temp$code.jpg")) {
                $this->Image("./temp$code.jpg", $x, $y, 40, 0, 'jpg');
            }
            $this->deleteCode( $code );
        }
        
    }

}

?>