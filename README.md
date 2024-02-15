##  アプリケーション名
Year_End

## アプリケーション概要
スーパーマーケットの年末商戦において次年度の参考になるよう、情報を残すため。


## URL
https://year-end-userid.onrender.com

## テスト用アカウント
Basic認証パスワード:pipapipa
Basic認証ID:hiro9808
テスト用メールアドレス:abcd1234@1234.com
テスト用パスワード:abcd1234
# 利用方法

## 商品情報登録
1 ユーザー登録はアプリケーション配信後、店舗が行う。  
2 商品詳細ページにアクセス後、情報を入力し登録する。  
3 登録内容（現担当者名、商品名、発注数、販売数、販売年、展開方法、展開場所、天気、欠品の有無、販売期間、商品説明コメント）
## アプリケーションを作成した背景
1 前職では年末商戦の数字を事務所の１台のPCで自身で調べたjanコードなどを入力し販売数を調べ,  
  紙に書き出し保管しておくという工程があり、手間がかかっていた。  
2 情報も担当者によってほぼ書いていないなどといったこともあり、店舗によって差があった。  
3 情報が統一されたことにより差をなくす、また工程の短縮に繋がるようアプリケーションを開発した。

## データベース設計
  [![Image from Gyazo](https://i.gyazo.com/31dc26aaf56f5d36a43d8331b46a5345.png)](https://gyazo.com/31dc26aaf56f5d36a43d8331b46a5345)
## 画面遷移図
  [![Image from Gyazo](https://i.gyazo.com/be16547fa3eaefeb6752a33686a202b2.png)](https://gyazo.com/be16547fa3eaefeb6752a33686a202b2)

## 開発環境
フロントエンド
-----------
・HTML  
・CSS  
・JavaScript  
・Bootstrap  
・JQuery  

バックエンド
---------
・Ruby  
・RUby-On-Rails  
・MYSQL 

その他
------
・Git  
・Render
・VsCode

## 工夫したポイント
1 現場はPCに不慣れな業界なので直感的に操作ができるようフロントエンドをタブレットのように扱えるよう工夫  
2 現在のデータ取得方法  
  JANを調べる→PCで販売数を調べる→写真を撮る→紙に書き写す  
3 アプリ導入後  
  PCで販売数を調べる→同じPCでデータを打ち込む 。
4 店長やスーパーバイザーも担当者がデータを取っているか聞く必要がなくアプリを見ればわかるようにした。
5 以下上司に操作方法を教えてもらえず新任部門チーフに昇進したときのため注意して実装
①登録ミスがないよう登録ボタンを押すとダイアログが出るようにjavascriptを使用。
②商品登録ページにてpreview-btnを押すと登録した後のpreviewが見られるよう※実装予定。
③商品登録後の一覧ページではサーチ機能を付ける※予定
④販売年別に一覧表示を分けて表示※予定
