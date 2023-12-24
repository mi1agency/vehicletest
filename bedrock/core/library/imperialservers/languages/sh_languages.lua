/*
 * Copyright © 2012-2023 Imperial Servers (http://www.imperialservers.com)
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

bedrock.language = bedrock.language or {}
function bedrock.language:New(strLangCode, strLangName) if !self[strLangCode:lower()] then self[strLangCode:lower()] = {Name = strLangName, Phrases = {}} end end
function bedrock.language:Add(strLangCode, strPhrase, strLang) if !self[strLangCode:lower()] then self[strLangCode:lower()] = {Name = "Undefined", Phrases = {}} end self[strLangCode:lower()].Phrases[strPhrase] = strLang end
function bedrock.language:Get(strLangCode, strPhrase) return self[strLangCode:lower()] and self[strLangCode:lower()].Phrases and self[strLangCode:lower()].Phrases[strPhrase] or self["en"].Phrases[strPhrase] end
LANG = function(strPhrase, strLang)
    local lang = GetConVarString("gmod_language") != "" and GetConVarString("gmod_language") or "en"
    if strLang != nil then
        bedrock.language:Add(lang, strPhrase, strLang)
    else
        return bedrock.language:Get(lang, strPhrase)
    end
end

bedrock.language:New("bg",      "Bulgarian")
bedrock.language:New("cs",      "Czech")
bedrock.language:New("da",      "Danish")
bedrock.language:New("de",      "German")
bedrock.language:New("el",      "Greek")
bedrock.language:New("en",      "English")
bedrock.language:New("en-PT",   "Pirate English")
bedrock.language:New("es-ES",   "Spanish")
bedrock.language:New("et",      "Estonian")
bedrock.language:New("fi",      "Finnish")
bedrock.language:New("fr",      "French")
bedrock.language:New("he",      "Hebrew")
bedrock.language:New("hr",      "Croatian")
bedrock.language:New("hu",      "Hungarian")
bedrock.language:New("it",      "Italian")
bedrock.language:New("ja",      "Japanese")
bedrock.language:New("ko",      "Korean")
bedrock.language:New("lt",      "Lithuanian")
bedrock.language:New("nl",      "Dutch")
bedrock.language:New("no",      "Norwegian")
bedrock.language:New("pl",      "Polish")
bedrock.language:New("pt-BR",   "Portuguese (Brazil)")
bedrock.language:New("pt-PT",   "Portuguese (Portugal)")
bedrock.language:New("ru",      "Russian")
bedrock.language:New("sk",      "Slovak")
bedrock.language:New("sv-SE",   "Swedish")
bedrock.language:New("th",      "Thai")
bedrock.language:New("tr",      "Turkish")
bedrock.language:New("uk",      "Ukrainian")
bedrock.language:New("vi",      "Vietnamese")
bedrock.language:New("zh-CN",   "Chinese Simplified")
bedrock.language:New("zh-TW",   "Chinese Traditional")
