class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true         #追記
      t.references :spot, foreign_key: true         #追記

      t.timestamps
      t.index [:user_id, :spot_id], unique: true    #追記
    end
  end
end
