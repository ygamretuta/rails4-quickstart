class Book < ActiveRecord::Base
  belongs_to :buyer, :class_name => 'User', :foreign_key => :buyer_id
  belongs_to :seller, :class_name => 'User', :foreign_key => :seller_id
  mount_uploader :photo, PhotoUploader

  attr_accessible :buyer_id, :seller_id, :title, :photo, :price
  paginates_per 1

  validates_associated :buyer, :seller
end
