class Item < ActiveRecord::Base
  attr_accessible :description, :user_id
  belongs_to :user
  validates :user_id, presence: true
  validates :description, presence: true, length: { maximum: 400 }
end
