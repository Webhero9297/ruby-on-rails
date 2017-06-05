class CreateCsvdatatables < ActiveRecord::Migration[5.0]
  def change
    create_table :csvdatatables do |t|
      t.string :property_no
      t.text :property_url
      t.text :photo_url
      t.text :property_street
      t.text :property_city
      t.text :property_state
      t.text :page_views
      t.string :latitude
      t.string :longitude
      t.text :date_available
      t.text :general_features
      t.text :outdoor_features
      t.text :indoor_features
      t.text :beds
      t.text :baths
      t.text :car_space
      t.text :price
      t.text :bond
      t.text :property_type
      t.text :agent_name
      t.text :agency_name
      t.text :agent_address
      t.text :property_heading
      t.text :property_desc
      t.text :inpection_time
      t.text :floorplan
      t.text :crawl_date_time
      t.string :uploaded_file_name

      t.timestamps
    end
  end
end
