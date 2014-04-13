<?php echo $header; ?>

<div id='content'>
    <h1>Friends Under Construction</h1>
 <div id='dashboard-wrapper'>
            <?php echo $sidebar; ?>
            
            <!-- <h2>This is your dashboard  </h2>  -->

            <div id='panel-left'>
                Content to be filled with 
            </div>


            <div id ='newsfeed'>
                <?php foreach ($friends as $friend)
                { ?>


                   <div id="friends-list">

                       <a href ="<?php echo HTTPS_SERVER . $friend['username']; ?>"> <span alt = "<?php echo $friend['UserId'] ?>"><?php echo ucfirst($friend['firstname']) . ' ' . ucfirst($friend['lastname']); ?> </span></a>
                       <div id='profile-list-email'><span><a href='#'><?php echo $friend['email']; ?></a></span></div>
                       <button href="<?php echo $friend['username']; ?>" alt = "<?php echo $friend['UserId'] ?>" id='btn-addfriend'><?php echo $friend['txt_button']; ?></button>
                       <div id="image"><img src="<?php echo $profile_pic; ?>"></div>
                       <div><img style='margin-top: 12px;' src="../image/mail.png"></div>
                   </div>


                  <?php 
                  }
              ?>
            </div>
               <div style='clear:both;'></div>
            <div id='message-display'>
                <div>
                    <div></div>
                </div> 
            </div>

    </div>
</div>

