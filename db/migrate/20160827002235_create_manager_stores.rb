class CreateManagerStores < ActiveRecord::Migration[5.0]
  def change
    create_table :manager_stores do |t|
      t.integer :manager_id
      t.integer :store_id

      t.timestamps
    end
  end
end
