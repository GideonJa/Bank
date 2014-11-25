class FedBank < ActiveRecord::Base
  before_save :split_address


  def split_address
    if self.address.include?(",")
      self.street1, self.street2 = address.split(",")
    else
      self.street1 = address
    end
  end
end
