class ChangeFavesMediaId < ActiveRecord::Migration[5.2]
  def change
    remove_column :faves, :media_id
    add_column :faves, :medium_id, :integer
  end
end
