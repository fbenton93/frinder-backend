class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :liker_id
      t.integer :likee_id

      t.timestamps
    end
  end
end
