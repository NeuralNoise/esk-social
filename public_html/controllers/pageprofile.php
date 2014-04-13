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
        $this->data['profile_userid']=$profile[0]['UserId'];
        $this->data['friends']=array();
        require_once 'system/library/timeconvert.php';
        
        $converter = new timeconvert();
        $datetime = $converter->convert_datetime($profile[0]['time']);
        $this->data['profile_datejoined']=  $converter->makeAgo($datetime);
        
        $this->data['profile_menu']= array(
            'Profile'=>array('href'=>$this->data['profile_username'].'/profile','title'=>'Profile'),
            'Info'=>array('href'=>$this->data['profile_username'].'/info','title'=>'Info'),
            'Friends'=>array('href'=>$this->data['profile_username'].'/friends','title'=>'Friends'),
            'Timeline'=>array('href'=>$this->data['profile_username'].'/timeline','title'=>'Timeline')
            );
        
        $this->render();
        
      
      // if not Ajax call then render the out put ------------------------  
      //  if(!isset($this->request->server['HTTP_X_REQUESTED_WITH']) && 
      //          $this->request->server['HTTP_X_REQUESTED_WITH']!='XMLHttpRequest')
       // {
            echo $this->output;
       // }
        
    }

    
    public function friends()
    {
        
        $this->load->model('user');
        $friendslist = $this->model_user->getFriendsList($this->data['profile_userid']);
        $this->data['friends'] = $friendslist;
          foreach ($friendslist as $key => $value) {
              
            echo $friendslist[$key]['username']."<br>" ;
          }   
          //$this->render();
    }
    
    
    
}
