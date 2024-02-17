document.addEventListener('DOMContentLoaded', function() {
  var register = document.getElementById('register');
  if (register) { 
    register.addEventListener('click', function(event) {
      var result = window.confirm('選択ミスはありませんか？');
      if (!result) {
        event.preventDefault(); 
      }
    });
  }
});