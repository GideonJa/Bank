json.array!(@fed_banks) do |fed_bank|
  json.extract! fed_bank, :id, :rt_number, :office_code, :frb_number, :record_type, :change_date, :new_routing, :name, :address, :city, :state, :zipcode, :zipcode_ext, :tel_Area, :tel_prefix_num, :tel_suffix_num
  json.url fed_bank_url(fed_bank, format: :json)
end
