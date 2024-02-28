document.addEventListener('DOMContentLoaded', function(){
  const itemNew = document.getElementById('item_form');

  const previewList = document.getElementById('previews');

  if (!itemNew) return null;

  //input[type="file"]セレクタは、HTMLフォーム内のファイル入力フィールドをターゲットにする
  //item[image]はitemデータのimageカラムを指す
  const fileField = document.querySelector('input[type="file"][name="item[image]"]');
  fileField.addEventListener('change',function(e){

    const alreadyPreview = document.querySelector('.preview-image');
    if (alreadyPreview) {
      alreadyPreview.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview-image');
    
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class','preview-image');
    previewImage.setAttribute('src',blob);
    previewImage.classList.add('preview-size');

    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);

  })
  
});