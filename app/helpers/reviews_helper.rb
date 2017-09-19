module ReviewsHelper
		def checked(area)
		@review.rating.nil? ? false : @review.rating.match(area)
	end
end
