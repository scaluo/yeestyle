# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120612140504) do

  create_table "itemimgs", :force => true do |t|
    t.string   "url"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "itemimgs", ["item_id"], :name => "index_itemimgs_on_item_id"

  create_table "items", :force => true do |t|
    t.integer  "num_iid"
    t.string   "title",               :limit => 100
    t.string   "nick"
    t.string   "type"
    t.text     "desc"
    t.integer  "cid"
    t.string   "props"
    t.string   "pic_url"
    t.decimal  "price",                              :precision => 10, :scale => 0
    t.datetime "list_time"
    t.datetime "delist_time"
    t.string   "location_city",       :limit => 20
    t.string   "location_state",      :limit => 20
    t.integer  "seller_credit_score"
    t.string   "click_url"
    t.string   "shop_click_url"
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
  end

  create_table "taobaokeitems", :force => true do |t|
    t.integer  "num_iid"
    t.string   "nick"
    t.string   "title",               :limit => 100
    t.decimal  "price",                              :precision => 10, :scale => 0
    t.string   "item_location"
    t.integer  "seller_credit_score"
    t.string   "click_url"
    t.string   "shop_click_url"
    t.string   "pic_url"
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
  end

end
