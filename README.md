# DB design
## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index:true|
|email|string|null:false, unique: true, foreign_key:true|

### Association
- has_many :tweets
- has_many :comments


## tweets table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text|null:falsee|
|user_id|reference|null:false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user


## comments table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|reference|null:falsee, foreign_key: true|
|tweet_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user





