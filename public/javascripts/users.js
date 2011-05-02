/* DO NOT MODIFY. This file was compiled Mon, 02 May 2011 09:48:45 GMT from
 * /Users/ph/Workspace/done.ly/app/coffeescripts/users.coffee
 */

(function() {
  $(document).ready(function() {
    return $('#post_content').keyup(function() {
      var charLength;
      charLength = 140 - $(this).val().length;
      return $('p.charcount').html(charLength);
    });
  });
}).call(this);
