Locales = Locales or {}


Locales['en'] = { 
    ['cant_find_vehicle']       = 'Could not find vehicle.',
    ['error_comission']         = 'Use /commission [percentage]',
    ['spawn_not_empty']         = 'A car is at the spawn point ...',
    ['error_update_car']        = 'Use /updatecar [model] [var] [data]',  
    ['draw_vehicle_info']       = 'Vehicle: ~y~%s~s~ <br>Stock: ~g~%s~s~',
    ['draw_seller_info']        = '<br>Seller: ~g~%s~s~',
    ['draw_price_info']         = 'Price: ~g~$%s~s~',
    ['draw_financing_info']     = '<br>Financing: $%s entry, $%s for 10 weeks',
    ['draw_commission_info']    = "<br>Commission: % ~y~%s~s~",
    ['press_to_buy']            = "Press [~g~G~s~] to Buy",
    ['press_to_exchange']       = "<br>Press [~g~E~s~] to exchange",
    ['press_to_finance']        = "<br>Press [~g~F~s~] to finance",
    ["press_to_catalog"]        = "Press [~g~E~s~] to view catalog",
    
    ["press_to_payment"]        = "Press [~g~%s~s~] to view finance",
    ["press_to_dashboard"]        = "Press [~g~%s~s~] to view dashboard",
    ["press_to_return_vehicle"] = "Press [~g~%s~s~] to return vehicle",

    ['press_to_open']           = "PRESS ~r~E~w~ TO OPEN VEHICLE SHOP",
    ['enough_money']            = 'You dont have money.',
    ['we_dont_vehicle']         = 'We dont have this vehicle.',
    ['car_dealer']              = 'Cardealer',
    ['rotate_keys']             = 'Use A and D to rotate vehicle.',
    ['testdrive']               = 'TIME LEFT TO TEST DRIVE ',
    ['dont_have_money']         = "You don't have enough money in your bank!",
    ["out_of_stock"]            = "Out of Stock",
    ["spawn_vehicle"]           = "Your vehicle is outside.",
    ["vehicle_in_garage"]       = "Your vehicle is in your garage!",

    ['successful_purchase']             = 'You have just successfully purchased the vehicle.',
    ['showroom_updated']             = 'Showroom updated',
    ['charshop_data_updated']        = 'Vehicle price has been changed successfully.',
    ['store_updated']           = 'Updated store information.',

    ['not_build_alowed'] = 'Your game needs to be build 2060 or higher',

    ['no_have_permission_to_invoice'] = "You are not allowed to look at invoices",

    ['you_not_are_in_store'] = "It is only possible to access the panel inside the establishment",

    ["sell_vehicle"] = "Sell Vehicle",
    ["confirm"] = "Confirm",
    ["buyer_id"] = "Buyer ID",

    ["open_panel"] = "Open control panel",
    ["open_catalog"] = "Open Catalogue",

    ["purchase_success"] = "Purchase made successfully",
    ["store_dont_have_money"] = "There is not enough cash in the company's cash register",
    ["stock_invalid"] = "Invalid stock quantity",

    ['check_who_selling'] = "Check who you\'re selling to or the amount to sell for.",
    ['transfer_your_vehicle'] = "Transfer your vehicle",
    ["new_owner_id"] = "New owner id",
    ['you_tranferred_vehicle'] = 'You transferred the vehicle',
    ['receive_the_vehicle'] = 'You received the vehicle',
    ['error_get_buyer_info'] = 'Unable to obtain buyer information.',
    ['person_far'] = 'The person you are selling to is long gone.'
}


if Config.Framework == 'QBCore' then
    Locale = Locale:new({
        phrases = Locales[Config.Locale],
        warnOnMissing = true
    })
elseif Config.Framework == 'ESX' then
    Locale = _U
end

function Lang(...)
    if Config.Framework == 'QBCore' then
        return Locale:t(...)
    elseif Config.Framework == 'ESX' then
        return Locale(...)
    end
end