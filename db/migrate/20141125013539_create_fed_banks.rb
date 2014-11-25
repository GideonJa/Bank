class CreateFedBanks < ActiveRecord::Migration
  def change
    create_table :fed_banks do |t|
      t.string :rt_number
      t.string :office_code
      t.string :frb_number
      t.string :record_type
      t.string :change_date
      t.string :new_routing
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :zipcode_ext
      t.string :tel_Area
      t.string :tel_prefix_num
      t.string :tel_suffix_num

      t.timestamps
    end
    add_index :fed_banks, :rt_number
  end
end
