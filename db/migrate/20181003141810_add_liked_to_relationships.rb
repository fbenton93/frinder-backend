class AddLikedToRelationships < ActiveRecord::Migration[5.2]
  def change
    add_column :relationships, :liked, :boolean
  end
end
