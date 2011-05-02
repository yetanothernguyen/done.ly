/* DO NOT MODIFY. This file was compiled Mon, 02 May 2011 10:39:35 GMT from
 * /Users/ph/Workspace/done.ly/app/coffeescripts/users.coffee
 */

(function() {
  $(document).ready(function() {
    $('#post_content').keyup(function() {
      var charLength;
      charLength = 140 - $(this).val().length;
      return $('p.charcount').html(charLength);
    });
    $('#post_content').blur(function() {
      return $("#idid").html('');
    });
    return $('#post_content').focus(function() {
      return $("#idid").html('I …');
    });
  });
}).call(this);
