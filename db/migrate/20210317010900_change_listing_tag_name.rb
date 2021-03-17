class ChangeListingTagName < ActiveRecord::Migration[6.1]
  def change
    # rename_column :table_name, :old_name, :new_name
    rename_column :listings, :tag_name, :hoa
  end
end
