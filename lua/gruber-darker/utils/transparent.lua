---@param transparent boolean
---@return fun(clr?: string): string
local fn = function(transparent)
	return transparent and function()
		return "NONE"
	end or function(clr)
		return clr
	end
end

return fn
