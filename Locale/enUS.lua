-- Translate RCLootCouncil to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil/localization/

local debug = false
--@debug@
debug = true
--@end-debug@

-- Default english translation
local L = LibStub("AceLocale-3.0"):NewLocale("RCLootCouncil", "enUS", true, debug)
if not L then return end

-- @Region core.lua
L["Unguilded"] = true
L["Not announced"] = true
L["Loot announced, waiting for answer"] = true
L["Offline or RCLootCouncil not installed"] = true
L["Candidate is selecting response, please wait"] = true
L["Candidate didn't respond on time"] = true
L["Candidate removed"] = true
L["Autopass"] = true
L["Mainspec/Need"] = true
L["Offspec/Greed"] = true
L["Minor Upgrade"] = true
L["Pass"] = true

L["Tank"] = true
L["Healer"] = true
L["DPS"] = true
L["None"] = true

L["&p was awarded with &i!"] = true
L["Items under consideration:"] = true

L["Need"] = true
L["Greed"] = true
L["Minor Upgrade"] = true
L["Pass"] = true
L["need, mainspec, ms, 1"] = true
L["greed, offspec, os, 2"] = true
L["minorupgrade, minor, 3"] = true
L["pass, 4"] = true
L["Disenchant"] = true
L["Banking"] = true
L["Free"] = true
L["Button"] = true

L["Do you want to use RCLootCouncil for this raid?"] = true
L["Yes"] = true
L["No"] = true
L["Changing LootMethod to Master Looting"] = true
L["Changing loot threshold to enable Auto Awarding"] = true
L[" you are now the Master Looter and RCLootCouncil is now handling looting."] = true
L[" now handles looting"] = true
L[" is not active in this raid."] = true

L["chat tVersion string"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s - %s"
L["chat version String"] = "|cFF87CEFARCLootCouncil |cFFFFFFFFversion |cFFFFA500 %s"
L["chat_commands"] = [=[
- config    - Open the options interface
- open      - Opens the voting frame
- council   - opens the council interface
- test (#)  - emulate a loot session (add a number for raid test)
- version   - open the Version Checker (alt. 'v' or 'ver')
- history   - open the Loot History (alt. 'h' or 'his')
- whisper   - displays help to whisper commands
- neverML   - never use the addon as Master Looter
- reset     - resets the addon's frames' positions
]=]
L["- debug or d - Toggle debugging"] = true
L["- log - display the debug log"] = true
L["- clearLog - clear the debug log"] = true
L["help"] = true
L["config"] = true
L["open"] = true
L["You are not allowed to see the Voting Frame right now."] = true
L["council"] = true
L["test"] = true
L["add"] = true
L["version"] = true
L["history"] = true
L["whisper"] = true
L["whisper_help"] = "Raiders can use the whisper system in case someone haven't installed the addon.\nWhispering 'rchelp' to the Master Looter will get them a guide along with the list of keywords, which can be edited at the 'Buttons and Responses' optiontab.\nIt's recommended for the ML to turn on 'Announce Considerations' as each item's number is required to use the whisper system.\nNOTE: People should still get the addon installed, otherwise all player information won't be available."
L["neverml"] = true
L["You cannot use this command without being the Master Looter"] = true
L["reset"] = true
L["Windows reset"] = true
L["The Master Looter has ended the session"] = true

L["Autopassed on %s"] = true
L["version_outdated_msg"] = "Your version %s is outdated. Newer version is %s, please update RCLootCouncil."
L["tVersion_outdated_msg"] = "Newest RCLootCouncil test version is: %s"
L["You cannot initiate a test while in a group without being the MasterLooter."] = true

L["Not Found"] = true

L["x days"] = "%d days"
L["days, x months, y years"] = "%s, %d months and %d years."
L["days and x months"] = "%s and %d months."

L["neverml_warning"] = "You are the Master Looter but have opted never to use RCLootCouncil as ML. Enter '/rc neverML' to use the addon."

L["session_error"] = "Something went wrong - please restart the session"

-- @region end

-- @region ml_core.lua
L["Cannot autoaward:"] = true
L["No items to award later registered"] = true
L["You're already running a session."] = true
L["No winners registered"] = true
L["Following winners was registered:"] = true
L["Could not find 'player' in the raid."] = "Could not find %s in the raid."

L["Could not Auto Award i because the Loot Threshold is too high!"] = "Could not Auto Award %s because the Loot Threshold is too high!"
L["The loot is already on the list"] = true
L["You can't start a loot session while in combat."] = true
L["The item would now be awarded to 'player'"] = "The item would now be awarded to %s"
L["All items has been awarded and  the loot session concluded"] = true
L["Unable to give out loot without the loot window open."] = true
L["Alternatively, flag the loot as award later."] = true
L["Auto awarded 'item'"] = "Auto awarded %s"
L["The session has ended."] = true
L["Item received and added from %s."] = true
L["Acknowledged as \" %s \""] = true
L["whisper_guide"] = "[RCLootCouncil]: session response [item1] [item2]. Link your item(s) that item #(session) would replace, (response) being of the keywords below:"
L["whisper_guide2"] = "[RCLootCouncil]: You'll get a confirmation message if you were successfully added."
L["sent whisper help to %s"] = true

-- @region end

-- @region votingframe.lua
L["Name"] = true
L["Rank"] = true
L["Role"] = true
L["Response"] = true
L["ilvl"] = true
L["Diff"] = true
L["g1"] = true
L["g2"] = true
L["Votes"] = true
L["Vote"] = true
L["Notes"] = true
L["Roll"] = true

L["No session running"] = true
L['A new session has begun, type "/rc open" to open the voting frame.'] = true

L["ilvl: x"] = "ilvl: %d"
L["RCLootCouncil Voting Frame"] = true
L["Something went wrong :'("] = true
L["You cannot use the menu when the session has ended."] = true

L["Abort"] = true
L["Close"] = true
L["Click to expand/collapse more info"] = true
L["Deselect responses to filter them"] = true
L["Filter"] = true
L["Status texts"] = true
L["Everyone have rolled and voted"] = true
L["Item has been awarded"] = true
L["Click to switch to"] = true
L["This item has been awarded"] = true
L["Vote"] = true
L["Unvote"] = true
L["The Master Looter doesn't allow votes for yourself."] = true
L["The Master Looter doesn't allow multiple votes."] = true
L["Note"] = true
L["Voters"] = true
L["Award"] = true
L["Award for ..."] = true
L["Change Response"] = true
L["Reannounce ..."] = true
L["Remove from consideration"] = true
L["Add rolls"] = true
L["This item"] = true
L["All items"] = true

L["Are you sure you want to abort?"] = true
L["Are you sure you want to give #item to #player?"] = "Are you sure you want to give %s to %s?"

-- @region end

-- @region lootFrame.lua
L["RCLootCouncil Loot Frame"] = true
L["Your note:"] = true
L["Add Note"] = true
L["Click to add note to send to the council."] = true
L["Enter your note:"] = true

-- @region end

-- @region versionCheck.lua
L["Version"] = true
L["Waiting for response"] = true
L["Unknown"] = true
L["Not installed"] = true
L["RCLootCouncil Version Checker"] = true
L["Guild"] = true
L["Group"] = true
-- @region end

-- @region sessionframe.lua
L["Item"] = true
L["RCLootCouncil Session Setup"] = true
L["Award later?"] = true
L["Check this to loot the items and distribute them later."] = true
L["Start"] = true
L["Looted items to award later"] = true
L["Cancel"] = true
-- @region end

-- @region options.lua
L["General options"] = true
L["Activate"] = true
L["activate_desc"] = "Uncheck to temporary disable RCLootCouncil. Useful if you're in a raid group, but not actually participating. Note: This resets on every logout."
L["Auto Open"] = true
L["auto_open_desc"] = "Check to Auto Open the voting frame when available. The voting frame can otherwise be opened with /rc open. Note: This requires permission from the Master Looter."
L["Minimize in combat"] = true
L["Check to have all frames minimize when entering combat"] = true
L["Test"] = true
L["test_desc"] = "Click to emulate master looting items for yourself and anyone in your raid."
L["Version Check"] = true
L["version_check_desc"] = "Opens the version checker module."
L["Silent Auto Pass"] = true
L["silent_auto_pass_desc"] = "Check to hide autopass messages"
L["Auto Pass"] = true
L["auto_pass_desc"] = "Check to enable autopassing of items your class cannot use."
L["Auto pass BoE"] = true
L["auto_pass_boe_desc"] = "Uncheck to never autopass Bind on Equip items."
L["Loot History"] = true
L["loot_history_desc"] = "RCLootCouncil automatically records relevant information from sessions.\nThe raw data is stored in \".../SavedVariables/RCLootCouncilLootDB.lua\".\n\nNote: Non-MasterLooters can only store data sent from the MasterLooter.\n"
L["Enable Loot History"] = true
L["enable_loot_history_desc"] = "Enables the history. RCLootCouncil won't log anything if disabled."
L["Send History"] = true
L["send_history_desc"] = "Send data to everyone in the raid, regardless if you log it yourself. RCLootCouncil will only send data if you're the MasterLooter."
L["Open the Loot History"] = true
L["open_the_loot_history_desc"] = "Click to open the Loot History."
L["Clear Loot History"] = true
L["clear_loot_history_desc"] = "Delete the entire loot history."

L["Master Looter"] = true
L["master_looter_desc"] = "Note: These settings will only be used when you're the Master Looter."
L["General"] = true
L["Looting options"] = true
L["Auto Enable"] = true
L["auto_enable_desc"] = "Check to always let RCLootCouncil handle loot. Unchecking will make the addon ask if you want to use it every time you enter a raid or become Master Looter."
L["Alt click Looting"] = true
L["alt_click_looting_desc"] = "Enables Alt click Looting, i.e. start a looting session by holding down alt and (left)clicking an item."
L["Auto Start"] = true
L["auto_start_desc"] = "Enables Auto Start, i.e. start a session with all egliable items. Disabling will show a editable item list before starting a session."
L["Loot Everything"] = true
L["loot_everything_desc"] = "Enables looting of non-items (e.g. mounts, tier-tokens)"
L["Autoloot BoE"] = true
L["autoloot_BoE_desc"] = "Enables autolooting of BoE (Bind on Equip) items."

L["Voting options"] = true
L["Self Vote"] = true
L["self_vote_desc"] = "Enables voters to vote for themselves."
L["Multi Vote"] = true
L["multi_vote_desc"] = "Enables multi voting, i.e. voters can vote for several candidates."
L["notes_desc"] = "Enables candidates to send a note to the council along with their roll."
L["Anonymous Voting"] = true
L["anonymous_voting_desc"] = "Enables Anonymous Voting, i.e. people can't see who's voting for who."
L["ML sees voting"] = true
L["ml_sees_voting_desc"] = "Allow the Master Looter too see who's voting for whom."
L["Hide Votes"] = true
L["hide_votes_desc"] = "Hides the number of votes until one have voted."
L["Observe"] = true
L["observe_desc"] = "If enabled, non-council members will be able to see the voting frame like a normal council member. They are not allowed to vote however."
L["Ignore Options"] = true
L["ignore_options_desc"] = "Control which items RCLootCouncil should ignore. If you add an item that isn't cached, you need switch to another tab and back before you'll see it in the list."
L["Add Item"] = true
L["ignore_input_desc"] = "Enter an itemID to add to the ignore list causing RCLootCouncil to never add the item to a session"
L["ignore_input_usage"] = "This function only accepts itemIDs (number)"
L["Ignore List"] = true
L["ignore_list_desc"] = "Items RCLootCouncil is ignoring. Click on a item to remove it."
L["Not cached, please reopen."] = true

L["Awards"] = true
L["Auto Award"] = true
L["auto_award_desc"] = "Activates Auto Award."
L["Lower Quality Limit"] = true
L["lower_quality_limit_desc"] = "Select the lower quality limit of items to auto award (this quality included!).\nNote: This overrides the normal loot treshhold."
L["Upper Quality Limit"] = true
L["upper_quality_limit_desc"] = "Select the upper quality limit of items to auto award (this quality included!).\nNote: This overrides the normal loot treshhold."
L["Auto Award to"] = true
L["auto_award_to_desc"] = "The player to Auto Award items to. A selectable list of raid members appear if you're in a raid group."
L["Reason"] = true
L["reason_desc"] = "The award reason to add to the Loot History when auto awarding."
L["Award Reasons"] = true
L["award_reasons_desc"] = "Award reasons that can't be chosen during a roll.\nUsed when changing a response with the right click menu and for Auto Awards.\n"
L["Number of reasons"] = true
L["number_of_reasons_desc"] = "Slide to change the number of reasons."
L["Reset to default"] = true
L["reset_to_default_desc"] = "Resets the award reasons to default."

L["Announcements"] = true
L["Award Announcement"] = true
L["Announce Awards"] = true
L["announce_awards_desc"] = "Enables the announcment of awards in chat."
L["announce_awards_desc2"] = "\nChoose which channel(s) you want to announce to along with the text.\nUse &p for the name of the player getting the loot, &i for the item awarded and &r for the reason."
L["Announce Considerations"] = true
L["announce_considerations_desc"] = "Activates announcement of items under consideration whenever a session starts."
L["announce_considerations_desc2"] = "\nChoose the channel you want to announce to and the message.\nYour message serves as a header for the list of items."
L["Channel"] = true
L["channel_desc"] = "The channel to send the message to."
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Officer"] = true
L["Raid"] = true
L["Raid Warning"] = true
L["Message"] = true
L["message_desc"] = "The message to send to the selected channel."
L["reset_announce_to_default_desc"] = "Resets all the announcement options to default"

L["Buttons and Responses"] = true
L["buttons_and_responses_desc"] = "Configure the reply buttons to show on raiders' Loot Frame.\nThe order showed here determines the order when sorting the voting frame, and is displayed left to right on the loot frame - use the slider to choose how many buttons you want (max %d).\n\nA \"Pass\" button is added furthest to the right automatically"
L["Number of buttons"] = true
L["number_of_buttons_desc"] = "Slide to change the number of buttons."
L["Responses from Chat"] = true
L["responses_from_chat_desc"] = "In case someone hasn't installed the added (Button 1 is used if no keyword is specified).\nExample: \"/w ML_NAME [ITEM] greed\" would by default show up as you greeding on an item.\nBelow you can choose keywords for the individual buttons, seperated by punctation or spaces. Only numbers and words are accepted.\nPlayers can recieve the keyword list by messaging 'rchelp' to the Master Looter once the addon is enabled (i.e. in a raid)."
L["Accept Whispers"] = true
L["accept_whispers_desc"] = "Enables players to whisper their current item(s) to you to get added to the voting frame."
L["reset_buttons_to_default_desc"] = "Resets all the buttons, colors and responses to default"

L["Council"] = true
L["Current Council"] = true
L["current_council_desc"] = "\nClick to remove certain people from the council\n"
L["Remove All"] = true
L["remove_all_desc"] = "Remove all council members"
L["Guild Council Members"] = true
L["Add ranks"] = true
L["add_ranks_desc"] = "Choose minimum rank to participate in lootcouncil:"
L["add_ranks_desc2"] = "\n\nSelect a rank above to add all members at and above that rank to the council.\n\nClick on the ranks to the left to add individual players to the council.\n\nClick the 'Current Council' tab to see your selection."
L["Group Council Members"] = true
L["group_council_members_head"] = "Add council members from your current group."
L["group_council_members_desc"] = "Use this to add council members from another realm or guild."

L["Set the text on button "] = "Set the text on button "
L["Response color"] = true
L["response_color_desc"] = "Set a color for the response."
L["Set the text for button i's response."] = "Set the text for button %d's response'"

L["Set the whisper keys for button i. Used in conjunction with Chat settings."] = "Set the whisper keys for button %d. Used in conjunction with Chat settings."

L["Text for reason #i"] = "Text for reason #"
L["Text color"] = true
L["text_color_desc"] = "Color of the text when displayed."
L["Log"] = true
L["log_desc"] = "Enables logging in Loot History."
L["channel_desc"] = "Select a channel to announce awards to."
L["Message"] = true
L["message_desc"] = "The message to send to the selected channel."
-- @region end
