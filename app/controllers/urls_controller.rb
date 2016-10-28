class UrlsController < ApplicationController

	def index
		@urls = Url.all 
	end


	def create 
		@url = Url.new(url_params)
		@url.short_url =  SecureRandom.base64[0..8]
		if @url.save
			
			#find url and save into database
			redirect_to urls_path
		else 
			#generate error message
			@errors = "errorrrsss"
			redirect_to urls_path
		end 
	end  



	private

	def url_params 
		params.require(:url).permit(:long_url)
	end 

end
