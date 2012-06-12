class CreateItemimgs < ActiveRecord::Migration
  def change
    create_table :itemimgs do |t|
      t.string :url,:limit=>255,:null=>:no
      t.integer :item_id

      t.timestamps
    end

    add_index :itemimgs, :item_id
  end
end
