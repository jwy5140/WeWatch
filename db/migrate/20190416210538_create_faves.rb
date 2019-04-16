class CreateFaves < ActiveRecord::Migration[5.2]
  def change
    create_table :faves do |t|
      t.integer :user_id
      t.integer :media_id
      t.boolean :fave_or_wish
    end
  end
end
