class ChangeListingNameToAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :name, :address
  end
end
