class Item < ActiveRecord::Base
	has_many :itemimg,dependent: :destroy
	scope :withcid,lambda{|cid|where('cid=? and list_time<=? and delist_time>=?',cid,Time.now,Time.now)}
end
