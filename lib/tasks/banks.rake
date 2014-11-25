namespace :banks do
  require 'open-uri'
  desc "Load the intial FedBank DB from www.fededirectory.frb.org"
  task first_load: :environment do
    counter = 0
    FedBank.destroy_all
    open('http://www.fededirectory.frb.org/FedACHdir.txt') do |f| 
      f.each_line do |line|
        line.strip!
        line1 = line.unpack "A9A1A9A1A6A9A36A36A20A2A5A4A3A3A4A1A1A5"
        # puts line1.inspect
        fed = FedBank.new
        fed.rt_number =       line1[0]
        fed.office_code =     line1[1]
        fed.frb_number =      line1[2]
        fed.record_type =     line1[3]
        fed.change_date =     line1[4]
        fed.new_routing =     line1[5]
        fed.name =            line1[6]
        fed.address =         line1[7]
        fed.city =            line1[8]
        fed.state =           line1[9]
        fed.zipcode =         line1[10]
        fed.zipcode_ext =     line1[11]
        fed.tel_Area =        line1[12]
        fed.tel_prefix_num =  line1[13]
        fed.tel_suffix_num =  line1[14]
        fed.save
        counter+=1
        # break if counter > 2
      end 
    end
    puts " #{counter} lines were created"
  end

end
