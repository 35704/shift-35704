# アプリケーション名

* shift-35704(シフト集計表)

# アプリケーション概要

* カレンダー内へユーザーの希望シフトを記載できる

# URL

* https://shift-35704.herokuapp.com/

# テスト用アカウント

### Basic認証
* ID:ryuji
* password:try04192278

### 管理者
* email:test@test.com
* password:a22222

### テストユーザー
* email:sample@sample.com
* password:a33333

# 目指した課題解決

* 管理者が希望シフトの回収がしやすいようにするためのアプリです。シンプルな表示にし誰が見ても見やすいようにしました。また、コメントをつけて呼びかけや連絡をできるようにしました。

# 洗い出した要件

* ユーザー機能とは別に管理者を作ること
* シフト投稿機能を作り、見やすい表示にカレンダー機能を作ること
* コメント機能を作ること

# 実装した機能についての画像やGIFおよびその説明

* ユーザー機能を実装後、管理者(admin)をdb:seedに情報を記載しました。

* シフト機能及びカレンダー機能を実装しました。
* https://i.gyazo.com/6e3d20f4af4eb6a6dee10a108a20fe4f.png

* ログイン後カレンダーの下部へコメント機能の実装しました。
* https://i.gyazo.com/9ce8efcad6dcb34a05e0960a552648e2.gif

* 希望シフトを追加したらカレンダーの日付へユーザー名と希望時間が表示するようにしました。
* https://i.gyazo.com/467686884dcce9582cbad7a7b149a5f9.gif

# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| email              | string | null: false               |
| encrypted_password | string | nill: false               |

### Association

- has_many :shifts
- has_many :comments

## shiftsテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| title              | string     | null: false                    |
| content            | text       |                                |
| start_time         | datetime   | null: false                    |
| user               | references | null: false                    |

### Association

- belongs_to :user

## commentsテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| text               | text       | null: false                    |
| user               | references | null: false                    |

### Association

- belongs_to :user

# 開発状況

### 開発環境

* Ruby / Ruby on Rails / MySQL / GitHub / Heroku
* 開発期間 6/16~6/22

### 動作確認方法

* WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
* 接続先およびログイン情報については、上記の通りです。