<?php
    abstract class controllerbackup
    {
        protected $registry;
        protected $data = array();
        protected $template;
        protected $output;
        protected $children = array();
        
        public function __construct($registry = NULL) {
		$this->registry = $registry;
                
	}
        
        

        public function __get($key) {
		return $this->registry->get($key);
	}
	
	public function __set($key, $value) {
		$this->registry->set($key, $value);
	}
        
        protected function getChild($child, $args = array()) {
		$action = new Action($child, $args);
	
		if (file_exists($action->getFile())) {
			require_once($action->getFile());

			$class = $action->getClass();

			$controller = new $class($this->registry);

			$controller->{$action->getMethod()}($action->getArgs());
			
			return $controller->output;
		} else {
			trigger_error('Error: Could not load controller ' . $child . '!');
			exit();					
		}		
	}
	    


        protected function render()
        {
            foreach ($this->children as $child)
            {
                
		$this->data[basename($child)] = $this->getChild($child);
                        
             }

            /*
            foreach ($this->children as $child) 
                {
                    $file = 'controllers/'.$child. '.php';
                     
			if (file_exists($file)) 
                            {
                                $this->data[basename($child)] = $child;
                                var_dump($this->data);
                                require_once($file);
                                
                                $controller = new $child();
                                
                                //$controller->index();
                                
                                
                                //$class = $action->getClass();

                                //$controller = new $class($this->registry);

                                //$controller->{$action->getMethod()}($action->getArgs());
			
                                //return $controller->output;
		} 
                else
                {
                    
			//trigger_error('Error: Could not load controller ' . $child . '!');
			echo 'no child found error';					
		}		
		}
		*/
            
            $template_path= 'views/' . $this->template . '.tpl';

            if (file_exists($template_path))
            {
               
                extract ($this->data);
                
                ob_start();
                
                require ($template_path);
                    
                    $this->output = ob_get_contents();

      		ob_end_clean();
                //echo $this->output;
                return $this->output;
            }
            else
            { echo $template_path .' not found';}
            
        }
        
        
        	protected function redirect($url, $status = 302) {
		header('Status: ' . $status);
		header('Location: ' . str_replace(array('&amp;', "\n", "\r"), array('&', '', ''), HTTP_SERVER. $url));
		exit();				
	}
	

        
    }
    
?>