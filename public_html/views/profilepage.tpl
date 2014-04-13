<?php echo $header; ?>

<div id='content'>
    <div id='profile-container'>
        
        <div id='profile-header'>
            <img style="border: 2px solid rgba(215, 215, 215, 1); display: inline-block;" src="<?php echo $profile_picture; ?>">
            <div style="display: inline-block;">
                <h1><?php echo $profile_firstname . " " . $profile_lastname; ?></h1>
                <h3><?php echo $profile_email ?> </h3>
                <div style='padding:5px;'> <?php echo $profile_about;?></div>
            </div>

            <button onclick="return false;" 
                    style="position: absolute; bottom:0; right:0; 
                    box-shadow: 0px 0px 4px #F0F0F0; margin-right: 10px;margin-bottom: 10px;
                    background-color: #EBEBEB; border:none;">
                Add as friend</button>
        </div>
        
        
     <div id='profile-page-content'>   
       
        <div id='profile-menu'>
            <?php
                foreach ($profile_menu as $menu)
                {
                    echo "<li> ". $menu . "</li>";
                }
            ?>
            <div style='clear: both;'></div>
        </div>
        <div style="clear:both;"></div>
     </div>
        
 </div>
  
</div>

<?php echo $footer; ?>