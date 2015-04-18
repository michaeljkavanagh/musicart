class CreateItems < ActiveRecord::Migration
  def change
    #drop_table :items
    create_table :items do |t|
      t.string   :title
      t.text     :description
      t.decimal  :price      
      t.string   :image_url
   

      t.timestamps null: false
    end
  end
end
