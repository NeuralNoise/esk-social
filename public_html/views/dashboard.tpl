<?php echo $header ?>


<div id="content">
    <div id='dashboard-wrapper'>
            <?php echo $sidebar; ?>
            <h2> Welcome <?php echo ucfirst($firstname);?> </h2>
            <!-- <h2>This is your dashboard  </h2>  -->

            <div id='panel-left'>
                Content to be filled with 
            </div>


            <div id ='newsfeed'>
                <?php foreach ($users as $user)
                { ?>


                   <div id="friends-list">

                       <a href ="<?php echo HTTPS_SERVER . $user['username']; ?>"> <span alt = "<?php echo $user['UserId'] ?>"><?php echo ucfirst($user['firstname']) . ' ' . ucfirst($user['lastname']); ?> </span></a>
                       <div id='profile-list-email'><span><a href='#'><?php echo $user['email']; ?></a></span></div>
                       <button href="<?php echo $user['username']; ?>" alt = "<?php echo $user['UserId'] ?>" id='btn-addfriend'><?php echo $user['txt_button']; ?></button>
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

<?php echo $footer; ?>