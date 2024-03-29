class Setting < ActiveRecord::Base 
  FILE_CATEGORIES = ["..", "stylesheets", "javascripts", "images"]
  def self.upload(upload, directory_info)
	name =  upload.original_filename
	directory = "#{Rails.root}/public/#{directory_info}/"
	# create the file path
	path = File.join(directory, name)
	# write the file
	File.open(path, "wb") { |f| f.write(upload.read) }
  end
end
