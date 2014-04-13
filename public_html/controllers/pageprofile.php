<?php
class pageprofile extends controller{
    
    public function index($pageID)
    {
        //parent::__construct($registry);
        
        
        $this->template='profilepage';
        $this->children = array('common/header','common/footer');
        
        $this->load->model('pageprofile');
        
        $profile = $this->model_pageprofile->getprofile($pageID);
        if(empty($profile))
        {
            $this->redirect('error');
        }
       
        $this->data['profile_username']= $profile[0]['username'];
        $this->data['profile_firstname']= $profile[0]['firstname'];
        $this->data['profile_lastname']= $profile[0]['lastname'];
        $this->data['profile_email']= $profile[0]['email'];
        $this->data['profile_picture']=  "../image/default-avatar.png";
        $this->data['profile_about'] = $profile[0]['about'];
        $this->data['profile_menu']= array('Profile','Info','Friends','Timeline');
        
        $this->render();
        
      
      // if not Ajax call then render the out put ------------------------  
      //  if(!isset($this->request->server['HTTP_X_REQUESTED_WITH']) && 
      //          $this->request->server['HTTP_X_REQUESTED_WITH']!='XMLHttpRequest')
       // {
            echo $this->output;
       // }
        
    }
    
    public function addfriend($friendid)
    {
        
 
    }
    
    
    
}
