///ページが読み込まれた後に実行
window.addEventListener('load', function(){
  //idを使用し要素を取得
  const answerButton = document.getElementById("answer-look")
  const answerDisplay = document.getElementById("correct-look")
  //クリック後答えを表示
  answerButton.addEventListener('click', function(){
    answerDisplay.setAttribute("style", "display:block;");
  })
})