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

function GenerateUUID2019()
    local t = os.time()
    local tmp = SHA2_256(tostring(math.random(0, t).."~"..t)):upper()
    return tmp:sub(1,16).."-"..tmp:sub(17,26).."-"..tmp:sub(27,40).."-"..tmp:sub(41,44).."-"..tmp:sub(45,56).."-"..tmp:sub(57,64)
end

function GenerateUUID2023()
    local t = os.time()
    local tmp = sha3.sha3_256(tostring(math.random(0, t).."~"..t)):upper()
    return tmp:sub(1,16).."-"..tmp:sub(17,26).."-"..tmp:sub(27,40).."-"..tmp:sub(41,44).."-"..tmp:sub(45,56).."-"..tmp:sub(57,64)
end
