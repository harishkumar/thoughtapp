require 'json/stream'
namespace :uploadfile do
  desc "TODO"
  require 'json/stream'
  task task1: :environment do
  	p "****started uploading****"
  	#p File.file? "#{Rails.root}/storage/companies.json"
  	#json = File.read("#{Rails.root}/storage/views.json")
  	#p json
  	#obj = ActiveSupport::JSON.decode(json)
	#obj = JSON::Stream::Parser.parse(json)
	#p obj
	#file = File.read("#{Rails.root}/storage/views.json")
	#obj = JSON.parse(file)
	#p obj
	#p file
	#obj.each do |x|
	#	puts x["name"]
	#end
	#p obj

	View.transaction do
		json = File.read("#{Rails.root}/storage/views2.json")
		obj = JSON::Stream::Parser.parse(json)
		#p obj
		View.bulk_insert do |worker|
		  obj.each do |attrs|
		  	begin
		    	worker.add(attrs)
			rescue Exception => e
				puts "1 #{e}"
			end
		  end
		end
		#obj.each do |p|
		#    view = View.new(name: p["name"], averagerating: p["averageRating"], oid: p["oid"], provenance: p["provenance"]);
		#    view.save!
		#    print "*"
		#end
		#ActiveRecord::Base.transaction do
		#	View.bulk_update obj
		#end
	    #columns = [:name, :averagerating, :oid, :provenance]
	    #View.import columns, View, validate: false
    end

    puts "\nuploading finished successfully !!"
  end

  desc "TODO"
  task task2: :environment do
  end

end
