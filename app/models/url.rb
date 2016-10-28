class Url < ActiveRecord::Base

	validates :long_url, :short_url, presence: true 
	validates :long_url, :format => URI::regexp(%w(http https))

	# before_save :shorten
	# def shorten
	# 	self.short_url =  SecureRandom.base64[0..8]
	# end

	def self.retrieve_short_url(long_url)
		@url = Url.find_by(long_url: long_url)
	
		return @url.short_url if @url

	end

end
