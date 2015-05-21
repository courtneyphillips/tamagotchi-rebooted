
  $window.setInterval(function() {
    @tama.start_update}, 5000);

    $(getUpdate);
    function getUpdate(){
      $("body").load("/");
      setTimeout(getUpdate,1000);
    }
