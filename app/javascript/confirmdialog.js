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

  // 削除ボタン用//
  const deleteBtn = document.getElementById("deleteBtn");

  deleteBtn.addEventListener("click", function() {
  const result = confirm("本当に削除してよろしいですか？");

  if (result) {
    window.location.href = '/';
  }
});
});



