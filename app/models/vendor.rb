class Vendor < ActiveRecord::Base
	belongs_to :category
	has_many :dishes, :dependent => :destroy
	has_many :events, :dependent => :destroy

	accepts_nested_attributes_for :dishes,
	 	reject_if: lambda { |attr| attr[:name].blank? },
	 	:allow_destroy => true

	accepts_nested_attributes_for :events,
	 	reject_if: lambda { |attr| attr[:start].blank? || attr[:title].blank? },
	 	:allow_destroy => true

end
