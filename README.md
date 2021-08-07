# 楽楽レシピ
料理レシピの投稿サイトです。  
簡単な操作で画像付きのレシピを気軽に投稿できます。  
レスポンシブ対応しているので、PC、iPad・スマホからでも確認できます。

![product-rakurecipe_home](https://user-images.githubusercontent.com/78526536/128594710-21f7dacf-45f5-4ce3-bbc8-fb51a9030532.png)

## 作成の経緯
下記の基本的な技術を習得することを目的として作成しました。
- AdobeXDを使ったワイヤーフレームの作成方法。
- HTML、CSSにより、ワイヤーフレーム通りのデザインを実現すること。
- Ruby on RailsのAction Controllerの基本を理解する。

## 使い方
- 未ログインの場合は、投稿されたレシピ一覧とユーザー一覧を見ることができます。
- ログイン済みの場合は、上記に加えてレシピ投稿、レシピ詳細とユーザー詳細を見ることができます。

![recipe_index](https://user-images.githubusercontent.com/78526536/128595154-99f6e163-cd64-4c38-80f8-92bdd82ff915.png)

![posting](https://user-images.githubusercontent.com/78526536/128594796-3d85704c-31d7-429a-8e0c-04cba6a171e7.png)

![mypage](https://user-images.githubusercontent.com/78526536/128597159-4b30eb6d-8e10-4d3b-82a5-1ecf314dfc4c.png)

## URL
https://product-rakurecipe.herokuapp.com/

 - ログイン
    - demo@example.com (メールアドレス)
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
- 検索機能(ransack)
