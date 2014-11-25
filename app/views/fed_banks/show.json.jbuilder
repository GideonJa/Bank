json.extract! @fed_bank,  :rt_number, :office_code, :frb_number, :record_type, :change_date, :new_routing, :name

json.address @fed_bank,  :street2, :street2, :city, :state, :zipcode, :zipcode_ext, :tel_Area, :tel_prefix_num, :tel_suffix_num


