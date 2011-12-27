/* DO NOT MODIFY. This file was compiled Tue, 27 Dec 2011 15:06:47 GMT from
 * /Users/nvunguyen/Projects/done.ly/app/coffeescripts/votes.coffee
 */

(function() {
  $(document).ready(function() {
    var $form;
    $form = $(".voteform form");
    $form.submit(function() {
      var $item, data, success, url;
      $item = $(this);
      $item.hide();
      url = this.action;
      data = $(this).serialize();
      $.post(url, data, success = function(x) {
        var $hf, count;
        console.debug($item);
        $hf = $(".highfives span", $item.closest("li"));
        count = parseInt($hf.html());
        $hf.html(count + 1);
        return $item.parent().parent().remove();
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
