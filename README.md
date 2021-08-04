# 楽楽レシピ
料理レシピの投稿サイトです。  
簡単な操作で画像付きのレシピを気軽に投稿できます。  
レスポンシブ対応しているので、PC、iPad・スマホからでも確認できます。

![product-rakurecipe_home](https://user-images.githubusercontent.com/78526536/128114093-84301c21-1698-4c54-ab30-232fd1245bd8.png)

## 作成の経緯
下記の基本的な技術を習得することを目的として作成しました。
- AdobeXDを使ったワイヤーフレームの作成方法。
- HTML、CSSにより、ワイヤーフレーム通りのデザインを実現すること。
- Ruby on RailsのAction Controllerの基本を理解する。

## 使い方
- 未ログインの場合は、投稿されたレシピ一覧とユーザー一覧を見ることができます。
- ログイン済みの場合は、上記に加えてレシピ投稿、レシピ詳細とユーザー詳細を見ることができます。


![modal](https://user-images.githubusercontent.com/78526536/128116385-723be946-f62c-4c21-9748-70fa751eb871.png)

![works_index](https://user-images.githubusercontent.com/78526536/128116427-ea8efe1b-eaec-494a-b89f-a7427cee8622.png)

## URL
https://product-rakurecipe.herokuapp.com/

 - ログイン
    - test@ &ensp;&ensp; (社員番号)
    - 12345678 (パスワード)

## 使用技術
- Ruby 2.7.4
- Ruby on Rails 6.0.4
- PostgreSQL 11.12
- Puma
- Docker/Docker-compose
- Heroku

## 機能一覧
- ユーザー登録、ログイン機能(devise)
- レシピ投稿機能
  - 画像投稿(refile)
  - クラウドストレージ(S3)
- ページネーション機能(kaminari)
