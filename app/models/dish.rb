class Dish < ActiveRecord::Base
	belongs_to :vendor
	has_one :menu_pic, dependent: :destroy

	accepts_nested_attributes_for :menu_pic,
	 	:allow_destroy => true


end
