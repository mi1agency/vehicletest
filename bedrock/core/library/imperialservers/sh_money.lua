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

function comma_value(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if k == 0 then
      break
    end
  end
  return formatted
end

function round(val, decimal)
  if decimal then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

function format_num(amount, decimal, prefix, neg_prefix)
  local str_amount,  formatted, famount, remain
  decimal = decimal or 2  -- default 2 decimal places
  neg_prefix = neg_prefix or "-" -- default negative sign
  famount = math.abs(round(amount,decimal))
  famount = math.floor(famount)
  remain = round(math.abs(amount) - famount, decimal)
  formatted = comma_value(famount)
  if (decimal > 0) then
    remain = string.sub(tostring(remain),3)
    formatted = formatted .. "." .. remain ..
    string.rep("0", decimal - string.len(remain))
  end
  formatted = (prefix or "") .. formatted
  if (amount<0) then
    if (neg_prefix=="()") then
      formatted = "("..formatted ..")"
    else
      formatted = neg_prefix .. formatted 
    end
  end
  return formatted
end

function Money(num) return format_num(tonumber(num), 0, "$", "$-") end
