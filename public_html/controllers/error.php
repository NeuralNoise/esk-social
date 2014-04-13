<?php

class Error extends controller
{
    public function index()
    {
        
        
        $this->template='error';
        $this->data['error_message']= 'Sorry, the page '. $this->url .' dose not exist';
       
        
        $this->children = array ('common/header','common/footer');
        $this->render();
        echo $this->output;
    }
    
}
