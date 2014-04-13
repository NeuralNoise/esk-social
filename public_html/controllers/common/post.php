<?php

class post extends controller
{
    
    public function index()
    {
        
        
        $this->template='common/post';
        $this->render();
        
    }
}
