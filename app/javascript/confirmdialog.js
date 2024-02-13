var register_button = document.getElementById('register-button')

register_button.addEventListener('click',function(){
  var result = window.confirm('クリック');

  if (result) {
    //trueの処理
  } else {
    //falseの処理
  }
})