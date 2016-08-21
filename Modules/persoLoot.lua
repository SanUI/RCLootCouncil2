-- Author      : Shimmer of EU-Mal'Ganis
-- Create Date : 8/21/2016
-- persoLooot.lua: Detects if an item you looted can be traded among your raid

local addon = LibStub("AceAddon-3.0"):GetAddon("RCLootCouncil")
local PersoLoot = addon:NewModule("RCPersoLoot")
local L = LibStub("AceLocale-3.0"):GetLocale("RCLootCouncil")

local LOOT_SELF_REGEX = gsub(gsub(LOOT_ITEM_SELF, "%%s", "(.+)"), "loot", "item")
--local LOOT_REGEX = gsub(LOOT_ITEM, "%%s", "(.+)")
local TRADE_REGEXP = gsub(BIND_TRADE_TIME_REMAINING, "%%s.","") 

function PersoLoot:OnDisable()
  self.frame:UnregisterAllEvents()
end

local function OnEvent(self, event, ...)
  if event == "CHAT_MSG_LOOT" then
    addon:Debug("Event: ", event, ...)
    PersoLoot:CHAT_MSG_LOOT(...)
  end
end

function PersoLoot:CHAT_MSG_LOOT(chatmsg) 
  local _, _, itemlink = chatmsg:find(LOOT_SELF_REGEX)
  if not itemlink then return end
  local _, _, itemId = chatmsg:find("item:(%d+):")

  --print(itemlink)

  self.tt:SetOwner(UIParent, 'ANCHOR_NONE')
  self.tt:ClearLines()
  self.tt:SetHyperlink(itemlink)


  for i=1,PersoLootTT:NumLines() do 
    local text=_G["PersoLootTTTextLeft"..i] 
    local text=text:GetText()
    if text and text:find(TRADE_REGEXP) then
      print("Left<"..i..">: " .. text)
    end

--    local textr=_G["PersoLootTTTextRight"..i] 
--    local textr=textr:GetText()
--    if textr and textr:find(TRADE_REGEXP) then
--      print("Right<"..i..">: " .. textr)
--    end
  end
end

function PersoLoot:OnEnable()
	addon:Debug("OnEnable()")
  print("PersoLoot enabled!")
  self.frame = CreateFrame("Frame") 

  self.frame:RegisterEvent("CHAT_MSG_LOOT")
  self.frame:SetScript("OnEvent", OnEvent)

  self.tt = CreateFrame('GameTooltip', 'PersoLootTT', UIParent, 'GameTooltipTemplate')

end
