<?php

class sidebar extends controller
{
    public function index()
    {
       
        $this->template='common/sidebar';
        $this->load->model('user');
        $this->data['datas']= $this->model_user->getusers();
        $this->render();
    }
    
    
}