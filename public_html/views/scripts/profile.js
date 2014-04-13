$(document).ready(function(){
        
    $('#btnname').click(function (e){
           // alert($('#firstname').val());
            return false;
    });
        
 
   // $('#profile-upload-container').draggable({containment:'#profile-upload-dialog-background'});

   /* $("#input-profile-upload").change(function(){
        var filename = $('#input-profile-upload').val();
        
        $.post('tools/image',
            {filename :filename},
                 function(data){
            
                  alert (data);
                    
                });
        

        
    });
    
     $('#btn-upload').click(function(e){
        
        var button = $(e.target);
        $('#input-profile-upload').click();        
        
    });
    */
    
    
    
    
    $('#profile-picture').mouseover(function(){
       $('#profile-picture-edit').css('display','block'); 
    });
    
    $('#profile-picture').mouseleave(function(){
       $('#profile-picture-edit').css('display','none'); 
    });
    
    $('#profile-upload-dialog-background').click(function(){
        $(this).hide();
        $('#profile-upload-container').fadeOut();
        $('#profile-upload-wrapper').fadeOut();
       
    });
    
    $('#close-icon').click(function(){
         $('#profile-upload-dialog-background').fadeOut();
         $('#profile-upload-container').fadeOut();
         $('#profile-upload-wrapper').fadeOut();
    });
    
    
    $('#profile-picture-edit').click(function(){
        $('#profile-upload-wrapper').show();
        $('#profile-upload-container').show();
        $("#profile-upload-dialog-background").show();
    });     
        
        
    $('#txtabout').bind('input propertychange', function() {
           
    });
    
    $('#btn-profile-save').click(function(){
       
       //var returnvalue = false;
       
       if($('#txt-profile-firstname').val()==='' || $('#txt-profile-lastname').val()==='' || $('#txt-profile-email').val()=='' )
       {
           return false;
       }
        return true;
    });

   
/* ajax photo upload -----------------------------------------*/

    $('#imageuploadform').on('submit',(function(e) {
        
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            type:'POST',
            url: 'tools/image',
            data:formData,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){
                //console.log("success");
                console.log(data);
                //alert(data);
            },
            uploadProgress: function(event, position, total, percentComplete) {
                console.log('asdasdasd');
               
            },
            error: function(data){
                //alert('error');
                //console.log("error");
                console.log(data);
            }
        });
    }));

    $("#imagebrowse").on("change", function() {
        $("#imageuploadform").submit();
    });


    $('#btn-upload').click(function(e){
        $("#imagebrowse").click();
         
          e.preventDefault();
    });



});




