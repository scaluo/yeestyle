class CreateTaobaokeitems < ActiveRecord::Migration
  def change
    create_table :taobaokeitems do |t|
      t.integer :num_iid,:null=>:no
      t.string :nick,:null=>:no
      t.string :title,:limit=>100,:null=>:no
      t.decimal :price,:null=>:no
      t.string :item_location
      t.integer :seller_credit_score
      t.string :click_url,:limit=>255,:null=>:no
      t.string :shop_click_url,:limit=>255
      t.string :pic_url,:limit=>255

      t.timestamps
    end
  end
end
