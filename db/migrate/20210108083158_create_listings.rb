class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :tag_name
      t.string :status
      t.date :first_listed_date
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.string :summary
      t.integer :sq_footage
      t.integer :asking_price
      t.string :agent
      t.string :phone
      t.string :company

      t.timestamps null: false
    end
  end
end
