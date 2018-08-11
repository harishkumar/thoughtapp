require 'json/stream'
class FileuploadController < ApplicationController
  def index
	puts "harish1"
	@x = params[:index][:attachment]
	#puts @x.nil?
	@y = params[:index][:waitforsubmit]
	puts @y==""
	if !@y.nil? && @y!=""
		json = File.read(@x)
		@obj = JSON::Stream::Parser.parse(json)
		puts "======json starts=========="
		puts @obj
		puts "======json ends==="
	else
		puts "sorry"
	end
  end

  private   
   def org_params   
      params.require(:index).permit(:attachment,:waitforsubmit)   
   end   
end
