module StallsHelper
		def checked(area)
		@stall.segments.nil? ? false : @stall.segments.match(area)
	end
end
