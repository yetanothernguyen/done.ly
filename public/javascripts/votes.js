/* DO NOT MODIFY. This file was compiled Wed, 04 May 2011 14:02:00 GMT from
 * /Users/ph/Workspace/done.ly/app/coffeescripts/votes.coffee
 */

(function() {
  $(document).ready(function() {
    var $form;
    $form = $(".voteform form");
    $form.submit(function() {
      var $item, data, success, url;
      $item = $(this);
      url = this.action;
      data = $(this).serialize();
      $.post(url, data, success = function(x) {
        var $hf, count;
        $hf = $(".highfives span", $item.closest("li"));
        count = parseInt($hf.html());
        $hf.html(count + 1);
        return $(".voteform form", $hf).hide();
      });
      return false;
    });
    return $(".highfives").each(function() {
      var $h, mIn, mOut;
      $h = $(this);
      mIn = function(eventObj) {
        return $(".highfivers", $h.closest("div.hf-box")).show();
      };
      mOut = function(eventObj) {
        return $(".highfivers", $h.closest("div.hf-box")).hide();
      };
      return $h.hover(mIn, mOut);
    });
  });
}).call(this);
