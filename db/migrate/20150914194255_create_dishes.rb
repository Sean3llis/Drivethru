class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
    	t.belongs_to :vendor
    	t.string :name

      t.timestamps null: false
    end
  end
end
