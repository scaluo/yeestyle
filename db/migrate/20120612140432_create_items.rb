class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :num_iid,:null=>:no
      t.string :title,:limit=>100,:null=>:no
      t.string :nick
      t.string :type
      t.text :desc
      t.integer :cid
      t.string :props
      t.string :pic_url,:limit=>255
      t.decimal :price
      t.datetime :list_time
      t.datetime :delist_time
      t.string :location_city,:limit=>20
      t.string :location_state,:limit=>20
      t.integer :seller_credit_score
      t.string :click_url,:limit=>255,:null=>:no
      t.string :shop_click_url,:limit=>255
      

      t.timestamps
    end
  end
end
