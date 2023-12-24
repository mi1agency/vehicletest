/*
 * Copyright © 2012-2023 Imperial Servers (https://www.imperialservers.com)
 * 
 * This file is original and proprietary. Unless you have been granted a legal license,
 * you have no legal right to view or use this code. Violating or removing any copyright
 * notices, or any text herein constitutes copyright infringement and may be prosecuted.
 * Intercepting a copy through a gamemode downloading tool, or otherwise intercepting a
 * transmission does not constitute a legal license or legal receipt of this code. Our
 * code is transmitted to you in order to run the software as we dictate. Using this
 * code for your own personal or commercial use without a legal license granted by us
 * may be prosecuted to the fullest extent of law for willful copyright infringement.
 * 
 * All Rights Reserved. This material may not be modified, stored, published, rewritten,
 * sold, redistributed, duplicated or reproduced in whole or in part without the express
 * written permission of Imperial Servers with a lawful license for use granted thereof.
*/

/*
Credits: Maurits
http://maurits.tv
*/

autohook = {}
function autohook:new()
	return setmetatable({_register = {}}, {
		__index = autohook,
		__newindex = function(self, key, value)
			if type(value) != "function" then
				rawset(self, key, value)
			else
				if key and not self._register[key] and value then
					self._register[key] = value
					hook.Add(key, "autohook." .. tostring(self) .. "." .. key,  function(...)
						self._register[key](self, ...)
					end)
				elseif key and self._register[key] and value then
					error(string.format("cannot add duplicate key %s.", key))
				elseif key and self._register[key] and !value then
					self._register[key] = nil
					hook.Remove(key, "autohook." .. tostring(self) .. "." .. key)
				end
			end
		end
	})
end
function autohook:Remove()
	for key, value in pairs(self._register) do
		hook.Remove(key, "autohook." .. tostring(self) .. "." .. key)
	end
end

/* EXAMPLE
local tenThinks = autohook:new()
tenThinks.count = 0
function tenThinks:Think()
	self.count = self.count + 1
	print("Think nr. " .. self.count)
	if self.count >= 10 then
		self:Remove()
	end
end
*/
