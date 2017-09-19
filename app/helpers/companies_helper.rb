module CompaniesHelper
		def checked2(area)
		@company.region.nil? ? false : @company.region.match(area)
	end
end
