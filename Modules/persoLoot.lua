-- Author      : Shimmer of EU-Mal'Ganis
-- Create Date : 8/21/2016
-- persoLooot.lua: Detects if an item you looted can be traded among your raid

local addon = LibStub("AceAddon-3.0"):GetAddon("RCLootCouncil")
local PersoLoot = addon:NewModule("RCPersoLoot")
local L = LibStub("AceLocale-3.0"):GetLocale("RCLootCouncil")

local LOOT_SELF_REGEX = gsub(gsub(LOOT_ITEM_SELF, "%%s", "(.+)"), "loot", "item")
--local LOOT_REGEX = gsub(LOOT_ITEM, "%%s", "(.+)")

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
  print(chatmsg)
  print(LOOT_SELF_REGEX)
  local _, _, itemlink = chatmsg:find(LOOT_SELF_REGEX)
  if not itemlink then return end
  local _, _, itemId = chatmsg:find("item:(%d+):")

  print(itemlink)
  print(tostring(itemlink))
  print(tostring(itemId))
end

function PersoLoot:OnEnable()
	addon:Debug("OnEnable()")
  print("PersoLoot enabled!")
  self.frame = CreateFrame("Frame") 

  self.frame:RegisterEvent("CHAT_MSG_LOOT")
  self.frame:SetScript("OnEvent", OnEvent)
end
