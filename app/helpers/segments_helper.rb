module SegmentsHelper
	def checked(area)
		@segment.travelsegments.nil? ? false : @segment.travelsegments.match(area)
	end
end
