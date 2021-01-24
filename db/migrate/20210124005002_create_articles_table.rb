class CreateArticlesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :articles, if_not_exists: true do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
