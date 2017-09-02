module SellersHelper
	def checked1(area)
		@seller.region.nil? ? false : @seller.region.match(area)
	end
end
