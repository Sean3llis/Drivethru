class Dish < ActiveRecord::Base
	belongs_to :vendor
	before_save :destroy_pic?

	has_attached_file :pic, style: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
	validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

	def pic_delete=(value)
		@pic_delete = value
	end

	private
	def destroy_pic?
		self.pic.destroy if @pic_delete == "1"
	end
end
