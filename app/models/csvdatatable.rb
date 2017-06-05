class Csvdatatable < ApplicationRecord
    def Csvdatatable.findRow(params)
       @row = self.where(['photo_url = ? and uploaded_file_name = ? and property_no = ?', params[:photo_url], params[:uploaded_file_name], params[:property_no]]) 
       @t = self.find_by(photo_url: params[:photo_url], uploaded_file_name: params[:uploaded_file_name], property_no: params[:property_no])
       return @t.nil?
    end
    
end
