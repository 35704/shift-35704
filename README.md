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