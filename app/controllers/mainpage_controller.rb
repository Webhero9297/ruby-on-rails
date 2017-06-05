require 'csv'
class MainpageController < ApplicationController
  def index
    @csvdatarow = Csvdatatable.all().order('id asc')
  end

  def upload
    uploaded_file_name = self.save_file( params[:upload])
    CSV.foreach(uploaded_file_name, headers: true) do |row|
      temp = row['geo_location']
      temp = temp.split(',')
      latitude = temp[0]
      longitude = temp[1]
      selector = { property_no: row['property_no'], property_url: row['property_url'],
                   photo_url: row['photo_url'], property_street: row['property_street'],
                   property_city: row['property_city'], property_state: row['property_state'],
                   page_views: row['page_views'], latitude: latitude,
                   longitude: longitude, date_available: row['date_available'],
                   general_features: row['general_features'], outdoor_features: row['outdoor_features'],
                   indoor_features: row['indoor_features'], beds: row['beds'],
                   baths: row['baths'], car_space: row['car_space'],
                   price: row['price'], bond: row['bond'],
                   agent_name: row['agent_name'], agency_name: row['agency_name'], 
                   agent_address: row['agent_address'], property_heading: row['property_heading'],
                   property_desc: row['property_desc'], inpection_time: row['inpection_time'],
                   floorplan: row['floorplan'], crawl_date_time: row['crawl_date_time'], uploaded_file_name: uploaded_file_name }

      if Csvdatatable.findRow(selector)
        @csvdatarow = Csvdatatable.new(selector)
        @csvdatarow.save   
        @csv_id = @csvdatarow.id
        p_url = row['photo_url'].split(',')
        p_url.each do |url|
          Photourl.where(:csv_id => @csv_id, :photo_url => url).first_or_create do |p_row|
            p_row.csv_id = @csv_id
            p_row.photo_url = url
            p_row.save
          end  
        end   
      end
    end
    redirect_to '/mainpage/index'
  end

  def save_file(upload)   

    file_name = upload['csvfile'].original_filename  if  (upload['csvfile'] !='')    
    file = upload['csvfile'].read    

    file_type = file_name.split('.').last
    new_name_file = Time.now.to_i
    name_folder = new_name_file
    new_file_name_with_type = "#{file_name}"
    rails_dir_root = 'public/upload_data/'
    rails_root = "#{rails_dir_root}"

    uploaded_file_name = rails_root + new_file_name_with_type
    Dir.mkdir(rails_root + "#{name_folder}");
    File.open(uploaded_file_name, "wb")  do |f|  
      f.write(file) 
    end
    return uploaded_file_name
  end
end
