class AddStreetToFedBanks < ActiveRecord::Migration
  def change
    add_column :fed_banks, :street1, :string
    add_column :fed_banks, :street2, :string
  end
end
