/* DO NOT MODIFY. This file was compiled Tue, 03 May 2011 10:54:21 GMT from
 * /Users/ph/Workspace/done.ly/app/coffeescripts/votes.coffee
 */

(function() {
  $(document).ready(function() {
    var $form;
    $form = $(".voteform form");
    return $form.submit(function() {
      var $item, data, success, url;
      $item = $(this);
      url = this.action;
      data = $(this).serialize();
      $.post(url, data, success = function(x) {
        var $hf, count;
        $hf = $(".highfives", $item.closest("li"));
        count = parseInt($hf.html());
        $hf.html(count + 1);
        return $(".voteform form", $hf).hide();
      });
      return false;
    });
  });
}).call(this);
