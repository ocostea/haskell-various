clock_angle :: Float -> Float -> Float
clock_angle h m = if hangle > mangle then 360 - absangle else absangle
	where	absangle = abs (hangle - mangle)
		hangle = (h' * onehourangle) + (m * oneminutehourangle)
		mangle = m * oneminuteangle
		h' = if h > 12 then h - 12 else h
		onehourangle = 360 / 12
		oneminuteangle = 360 / 60
		oneminutehourangle = onehourangle / 60
