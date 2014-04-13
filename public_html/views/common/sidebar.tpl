<div id='sidebar'>
    <h3 style="border-bottom: 1px solid #CCC; padding:3px;margin:3px;">Feeds</h3>
    <?php
        foreach($datas as $data)
        {
            echo "<div>" . ucfirst($data['firstname']) . "</div>";
        }
    ?>
</div>