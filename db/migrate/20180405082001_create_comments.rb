class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message,   null: false
      t.references :user
      t.references :tweet
      t.timestamps
    end
  end
end
