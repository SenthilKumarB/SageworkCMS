$(function()
{
  $('#wysiwyg').wysiwyg({
    controls: {
      html : { visible : true },      
      separator07 : { visible : true },
      cut   : { visible : true },
      copy  : { visible : true },
      paste : { visible : true }
    }
  });
});
// $(document).ready(function(){
//   $("#preview_pages").hide();      
//   $("#preview").click(function(){
//     var page_description = $("#html_editor").val();
//     $("#preview_pages").toggle();      
//     $("#preview_pages").html(page_description);
//   });
// });