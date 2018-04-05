class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text :text,         null:false
      t.text :image,        null:false
      t.references :user
      t.timestamps
    end
  end
end
