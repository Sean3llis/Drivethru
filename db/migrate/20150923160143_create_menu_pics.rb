class CreateMenuPics < ActiveRecord::Migration
  def change
    create_table :menu_pics do |t|
    	t.belongs_to :dish
    	t.attachment :pic

      t.timestamps null: false
    end
  end
end
