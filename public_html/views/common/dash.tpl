<div id='profile_menu'>
    <?php
        foreach($dashboard_menu as $menu => $href)
     {
     ?>       
     <li><?php  echo "<a href='".$href."'>" . $menu . "</a>"; ?></li>
      <?php  
      }
      ?>
    
</div>
