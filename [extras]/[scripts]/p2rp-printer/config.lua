Config = {}

Config.Core = "QBCore"
Config.OldQBCore = false
Config.CoreFolderName = "qb-core" 

Config.Printer = {
    [1] = {coords = vector3(-558.62, -191.04, 38.23), heading = 25.14, model = "v_med_cor_photocopy", z_offset = -1.0, count = 50, capacity = 100},
}
-- Add new coord and heading 
-- model (spawn machine prop name, should be nil if you dont want to spawn the prop)
-- some props name that you can use - "prop_printer_01", "prop_printer_02", "v_res_printer", "v_ret_gc_print"
-- capacity (Maximum number of A4 sheets machine can carry)
-- count (Initial count of A4 sheets in printer, when resource start)
-- z_offset to align prop vertically (perfect placement to ground), else set z_offset = 0.0

--[[
    * Notify Config
    * Set only one to true 
    * Config.QBCoreNotify - Uses default QBCore notify system
    * Config.okokNotify - Uses OkOkNotify system
    * Config.pNotify - Uses pNotify system

    * Config.pNotifyLayout - set layout of where the notification will show. Check the layouts below. 
    * Layouts:
                top
                topLeft
                topCenter
                topRight
                center
                centerLeft
                centerRight
                bottom
                bottomLeft
                bottomCenter
                bottomRight
    
    * Config.OkOkNotifyTitle - Title to show on okokNotify
]]--
Config.Notify = {
    ['QBCore'] = true, --(Default)
    ['okokNotify'] = false,
    ['pNotify'] = false,
    ["QBCore_2"] = false -- (for people who have title parameters on base qbcore notify (title will be taken from OkOkNotifyTitle))
}

Config.pNotifyLayout = "centerRight" --more options can be found in pNotify Readme. Make sure you put the right layout name.
Config.OkOkNotifyTitle = "HP Printer" --Title that displays on okoknotify


--Format of Config.Locale
--[[
    * name = label
    * Do not alter the name (for eg. ["invalid_url"] -> do not change this)
    * change the label (for eg. "Invalid URL!" can be changed to whatever you want.)
]]--

Config.Locale = {
    ["invalid_url"] = "Invalid URL!",
    ["file_url_required"] = "File URL required",
    ["file_name"] = "File Name required",
    ["not_enough_sheets"] = "Not have enough space for more A4 Sheets",
    ["no_sheets"] = "You do not have A4 Sheets!",
    ["refilling"] = "Refilling A4 Sheets",
    ["printing"] = "Printing Document",
    ["paper_count"] = "Paper Count",
    ["refill"] = "~r~K~w~ - Refill",
    ["use"] = '~g~E~w~ - Use',
    ["wrong_image"] = "Image not present in the right discord channel",
}

Config.RestrictMode = false --set to to true if you want to restrict people from using any images and use only the images from Allowed Discord Channels, if false users can use any link for images

--[[
    Just add as many channels you want if you set RestrictMode to true
]]--
Config.AllowedChannels = { --Allowed Discord channels for PNG upload
    "https://cdn.discordapp.com/attachments/1141385661446893578",  -- the number after "attachments/" is the channel id, to get that, just right click on the channel and copy id (for now this is the teasers channel on my discord)
    -- "https://cdn.discordapp.com/attachments/909905066671108136",  

}