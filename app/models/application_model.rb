require 'csv'
class ApplicationModel < ActiveRecord::Base
  self.abstract_class = true
  def self.to_csv(models=nil, header=false)
    models ||= all
    columns = column_names - ['id','created_at','updated_at']
    CSV.generate do |csv|
      csv << columns if header
      models.each do |model|
        csv << model.attributes.values_at(*columns)
      end
    end
  end
end
