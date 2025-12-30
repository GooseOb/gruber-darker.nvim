return function(transparent)
	return transparent and function()
		return "NONE"
	end or function(clr)
		return clr
	end
end
