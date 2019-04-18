class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :title
      t.string :genres
      t.string :runtime
      t.string :release_year
      t.string :rating
      t.string :rating_votes
    end
  end
end
