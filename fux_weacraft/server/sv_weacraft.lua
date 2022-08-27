ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('WC:giveItem')
AddEventHandler('WC:giveItem', function(item, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.addInventoryItem(item, amount)
end)

RegisterNetEvent('WC:removeMoney')
AddEventHandler('WC:removeMoney', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeAccountMoney('bank', amount)
end)

RegisterNetEvent('WC:craftPistol')
AddEventHandler('WC:craftPistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer.hasWeapon('WEAPON_PISTOL') then
        if xPlayer.getInventoryItem('canon').count >= 1 
        and xPlayer.getInventoryItem('poigne').count >= 1 
        and xPlayer.getInventoryItem('culasse').count >= 1
        and xPlayer.getInventoryItem('detente').count >= 1 
        and xPlayer.getInventoryItem('chargeur').count >= 1 then
            xPlayer.removeInventoryItem('canon', 1)
            xPlayer.removeInventoryItem('poigne', 1)
            xPlayer.removeInventoryItem('culasse', 1)
            xPlayer.removeInventoryItem('detente', 1)
            xPlayer.removeInventoryItem('chargeur', 1)
            xPlayer.addWeapon('WEAPON_PISTOL', 255)
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Création réussite, voici votre pistolet.", "CHAR_LESTER_DEATHWISH", 9)
        else 
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Vous n\'avez pas tous les objets requis.", "CHAR_LESTER_DEATHWISH", 9)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Tu as déjà un pistolet sur toi.", "CHAR_LESTER_DEATHWISH", 9)
    end
end)

RegisterNetEvent('WC:craftRevolver')
AddEventHandler('WC:craftRevolver', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer.hasWeapon('WEAPON_REVOLVER') then
        if xPlayer.getInventoryItem('canon').count >= 2 
        and xPlayer.getInventoryItem('poigne').count >= 1 
        and xPlayer.getInventoryItem('culasse').count >= 1
        and xPlayer.getInventoryItem('detente').count >= 1 
        and xPlayer.getInventoryItem('chargeur').count >= 1 then
            xPlayer.removeInventoryItem('canon', 2)
            xPlayer.removeInventoryItem('poigne', 1)
            xPlayer.removeInventoryItem('culasse', 1)
            xPlayer.removeInventoryItem('detente', 1)
            xPlayer.removeInventoryItem('chargeur', 1)
            xPlayer.addWeapon('WEAPON_REVOLVER', 255)
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Création réussite, voici votre revolver.", "CHAR_LESTER_DEATHWISH", 9)
        else 
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Vous n\'avez pas tous les objets requis.", "CHAR_LESTER_DEATHWISH", 9)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Tu as déjà un revolver sur toi.", "CHAR_LESTER_DEATHWISH", 9)
    end
end)

RegisterNetEvent('WC:craftSMG')
AddEventHandler('WC:craftSMG', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer.hasWeapon('WEAPON_SMG') then
        if xPlayer.getInventoryItem('canon').count >= 2 
        and xPlayer.getInventoryItem('poigne').count >= 2 
        and xPlayer.getInventoryItem('culasse').count >= 1
        and xPlayer.getInventoryItem('gardemain').count >= 1
        and xPlayer.getInventoryItem('crosse').count >= 1
        and xPlayer.getInventoryItem('detente').count >= 1 
        and xPlayer.getInventoryItem('chargeur').count >= 1 then
            xPlayer.removeInventoryItem('canon', 2)
            xPlayer.removeInventoryItem('poigne', 2)
            xPlayer.removeInventoryItem('culasse', 1)
            xPlayer.removeInventoryItem('gardemain', 1)
            xPlayer.removeInventoryItem('crosse', 1)
            xPlayer.removeInventoryItem('detente', 1)
            xPlayer.removeInventoryItem('chargeur', 1)
            xPlayer.addWeapon('WEAPOn_SMG', 255)
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Création réussite, voici votre smg.", "CHAR_LESTER_DEATHWISH", 9)
        else 
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Vous n\'avez pas tous les objets requis.", "CHAR_LESTER_DEATHWISH", 9)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Tu as déjà une smg sur toi.", "CHAR_LESTER_DEATHWISH", 9)
    end
end)

RegisterNetEvent('WC:craftAK')
AddEventHandler('WC:craftAK', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer.hasWeapon('WEAPON_ASSAULTRIFLE') then
        if xPlayer.getInventoryItem('canon').count >= 3 
        and xPlayer.getInventoryItem('poigne').count >= 2 
        and xPlayer.getInventoryItem('culasse').count >= 2
        and xPlayer.getInventoryItem('gardemain').count >= 1
        and xPlayer.getInventoryItem('crosse').count >= 1
        and xPlayer.getInventoryItem('detente').count >= 1 
        and xPlayer.getInventoryItem('chargeur').count >= 1 then
            xPlayer.removeInventoryItem('canon', 3)
            xPlayer.removeInventoryItem('poigne', 2)
            xPlayer.removeInventoryItem('culasse', 2)
            xPlayer.removeInventoryItem('gardemain', 1)
            xPlayer.removeInventoryItem('crosse', 1)
            xPlayer.removeInventoryItem('detente', 1)
            xPlayer.removeInventoryItem('chargeur', 1)
            xPlayer.addWeapon('WEAPON_ASSAULTRIFLE', 255)
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Création réussite, voici votre AK-47.", "CHAR_LESTER_DEATHWISH", 9)
        else 
            TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Vous n\'avez pas tous les objets requis.", "CHAR_LESTER_DEATHWISH", 9)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, "ILLEGAL", "Création d'arme", "Tu as déjà une AK-47 sur toi.", "CHAR_LESTER_DEATHWISH", 9)
    end
end)