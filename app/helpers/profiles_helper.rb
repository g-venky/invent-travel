module ProfilesHelper
			def checked1(area)
		@profile.segments.nil? ? false : @profile.segments.match(area)
	end
end
