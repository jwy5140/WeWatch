class ChangeFavesToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_table :faves, :favorites
  end
end
