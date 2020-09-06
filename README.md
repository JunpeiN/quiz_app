# アプリ名
**プログラミング学習クイズアプリ**

## 概要
管理者が登録しているプログラミングに関するクイズがランダムで出題されるWEBアプリケーションです。  
その問題に解答しながらプログラミングを学習をすることができます。

## URL
https://quiz-app-15467.herokuapp.com/

## 管理者用アカウント
Email：sample sample.com  
Password：a12345

## 利用方法
管理者側  
管理者はログインするとトップページにクイズを追加する項目と  
すでに追加しているクイズリストの項目があるので各ページにとび追加や編集をすることができます。  
利用者側  
クイズスタートボタンを押すとランダムにクイズが出題されますので、  
入力フォームに答えを入力後答えを見るボタンで答え合わせをすることができます。


## 制作背景(意図)
プログラミングの学習はとても覚えることが多く大変です。  
そこで楽しんで学習できるようにと作成しました。

## イメージ
管理者以外は上部のメニュー(クイズリスト等)が見えていません。 
  
![1](https://github.com/JunpeiN/quiz_app/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%82%B7%E3%83%A71.png)
  
クイズスタートボタンを押すと始まります。 
  
![2](https://github.com/JunpeiN/quiz_app/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%82%B7%E3%83%A72.png)
  
答えを見るボタンを押すと解答が表示され、次へボタンで次の問題へ進みます。  
  
![3](https://github.com/JunpeiN/quiz_app/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%82%B7%E3%83%A73.png)

## 工夫したポイント
スムーズに問題を問けるように、答えのページに遷移するのではなく非同期通信で表示するようにしました。

## 使用技術(開発環境)
HTML / CSS / JavaScript / Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code

## 追加予定機能
問題数が増えてくることを想定して問題をジャンルを分けて登録できるようにし、  
ジャンルを選択して学習できるようにしていこうと考えております。

## DB設計

### quizzes テーブル

| Column     | Type | Options     |
| ---------- | ---- | ----------- |
| question   | text | null: false |
| answer     | text | null: false |
| remark     | text | null: false |


### users テーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| email          | string  | null: false |
| password       | string  | null: false |

