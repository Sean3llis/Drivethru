class Vendor < ActiveRecord::Base
	belongs_to :category
	has_many :dishes, :dependent => :destroy
	accepts_nested_attributes_for :dishes,
	 	reject_if: lambda { |attr| attr[:name].blank? },
	 	:allow_destroy => true
end
