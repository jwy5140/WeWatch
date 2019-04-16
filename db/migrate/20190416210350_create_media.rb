class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :title
      t.string :genre
      t.integer :runtime
    end
  end
end
