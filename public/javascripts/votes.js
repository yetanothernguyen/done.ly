/* DO NOT MODIFY. This file was compiled Mon, 02 May 2011 09:32:49 GMT from
 * /Users/ph/Workspace/done.ly/app/coffeescripts/votes.coffee
 */

(function() {
  $(document).ready(function() {
    var $form;
    $form = $("#voteform form");
    return $form.submit(function() {
      var data, url;
      url = this.action;
      data = $(this).serialize();
      $.post(url, data);
      return false;
    });
  });
}).call(this);
