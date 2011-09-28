class WhitePaper < ActiveRecord::Base
  def self.upload(upload, white_paper_name, id)
      @white_paper = (id == 0) ? WhitePaper.new : WhitePaper.find(id)
      incoming_file = upload.original_filename.split(".")
      @white_paper.name = white_paper_name
      @white_paper.filename = incoming_file.first.gsub(" ", "_") + "_" + "#{Time.now.to_i}" + "." + incoming_file.last
      @white_paper.content_type = upload.content_type
      directory = "public/data"
      FileUtils.mkdir_p directory unless File.exists?(directory)
      path = File.join(directory, @white_paper.filename)
      File.open(path, "wb") { |f| f.write(upload.read) }
      if File.exists?(path)
        @white_paper.save
      else
        return false
      end
  end
end
