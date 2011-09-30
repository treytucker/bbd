$(document).ready(function(){

// $('#login-dropdown').removeClass('.hidden');
// $('#login-dropdown').hide();


// All the quotes stuff
$('#quote-closer').click(function (){
	$('#quote-container').slideToggle("slow");
})
$('#quote-container').show();
$('#all-quotes').mbScrollable({
	width:914,
	elementsInPage:1,
	controls:"#controls",
	slideTimer:2000,
	autoscroll:false,
	scrollTimer:17000,
})


//Flash Notice Closer
$('#flash-notice-closer').click(function(){
	$('#flash-notice-container').slideToggle('fast');
	return false;
})


//hacking the DC Login Box
$('#dcloginpopup').find('div').first().find('img').hide();
$('#dcloginpopup').prepend('<a class="login-closer" onclick="HideDCLogin();" >×</a>');
$('#dcloginpopup').find('table').find('tr').find('td:first').addClass('login-label');
$('#dcloginpopup').find('#submitimg').parent().prepend('<a class="login-submit" onclick="dosubmit();" href="#">Let\'s Go!</a>');


//Hacking User Widget
$('#My-Info').find('input[type="button"]').addClass('DCUser-submit');
$('#My-Info').find('tr').find('td:first').addClass('edit-field-label');
$('#forgotpasswordtr').find('.login-label').removeClass('login-label').find('a').addClass('login-submit');
$('#forgotpasswordtr').prepend('<td class="login-label"></td>');


// Clears and stores the default value in input fields
$('input[type="text"]').each(function() {
       var default_value = this.value;
       $(this).focus(function(){
               if(this.value == default_value) {
                       this.value = '';
               }
       });
       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       });

});
$('textarea[class="clear-input"]').each(function() {
       var default_value = this.value;
       $(this).focus(function(){
               if(this.value == default_value) {
                       this.value = '';
               }
       })
       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       })

})


//Sorting the Widgets
$("#sidebar-sorter").sortable({
	placeholder: "ui-state-highlight",
	axis: 'y',
	update: function(event, ui) { //this is where we'll do some updating crap
		$("#sidebar-sorter").find('.indiv-widget').each(function(){
				var val = $(this).find('.widget_order_input').val();// this val will be like "124,1"
				var result = val.split(',');
				var order = $("#sidebar-sorter .indiv-widget").index($(this))//getting the order of the current element in the loop
				result[1] = order; // we're reassigning the order
				$(this).find('input.widget_order_input').val(result.toString());//we're putting the values back in, as "124,0" or "125,3" or whatever.
			})
		}
})


});