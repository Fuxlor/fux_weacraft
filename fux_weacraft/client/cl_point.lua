Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.canon.x, config.recolte.canon.y, config.recolte.canon.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.canon.x, config.recolte.canon.y, config.recolte.canon.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("canon", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer un canon. ("..config.prix.canon.."$)")
            DisplayHelpTextThisFrame("canon", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'canon', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.canon)
                if config.wait == true then   
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9) 
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.poigne.x, config.recolte.poigne.y, config.recolte.poigne.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.poigne.x, config.recolte.poigne.y, config.recolte.poigne.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("poigne", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer une poigné. ("..config.prix.poigne.."$)")
            DisplayHelpTextThisFrame("poigne", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'poigne', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.poigne)
                if config.wait == true then 
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.culasse.x, config.recolte.culasse.y, config.recolte.culasse.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.culasse.x, config.recolte.culasse.y, config.recolte.culasse.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("culasse", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer une culasse. ("..config.prix.culasse.."$)")
            DisplayHelpTextThisFrame("culasse", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'culasse', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.culasse)
                if config.wait == true then 
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)    
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.crosse.x, config.recolte.crosse.y, config.recolte.crosse.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.crosse.x, config.recolte.crosse.y, config.recolte.crosse.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("crosse", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer une crosse. ("..config.prix.crosse.."$)")
            DisplayHelpTextThisFrame("crosse", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'crosse', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.crosse)
                if config.wait == true then 
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.gardemain.x, config.recolte.gardemain.y, config.recolte.gardemain.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.gardemain.x, config.recolte.gardemain.y, config.recolte.gardemain.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("gardemain", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer un garde main. ("..config.prix.gardemain.."$)")
            DisplayHelpTextThisFrame("gardemain", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'gardemain', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.gardemain)
                if config.wait == true then 
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)    
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.detente.x, config.recolte.detente.y, config.recolte.detente.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.detente.x, config.recolte.detente.y, config.recolte.detente.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("detente", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer une détente. ("..config.prix.detente.."$)")
            DisplayHelpTextThisFrame("detente", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'detente', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.detente)
                if config.wait == true then 
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.recolte.chargeur.x, config.recolte.chargeur.y, config.recolte.chargeur.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1 then
            DrawMarker(20, config.recolte.chargeur.x, config.recolte.chargeur.y, config.recolte.chargeur.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.5, 1.0, 255, 0, 0, 50, false, true, 2, nil, nil, false)
            AddTextEntry("chargeur", "Appuyez sur ~INPUT_CONTEXT~ pour récupérer un chargeur. ("..config.prix.chargeur.."$)")
            DisplayHelpTextThisFrame("chargeur", false)
            if IsControlJustReleased(0, 51) then
                TriggerServerEvent('WC:giveItem', 'chargeur', 1)
                TriggerServerEvent('WC:removeMoney', config.prix.chargeur)
                if config.wait == true then     
                    ESX.ShowAdvancedNotification("ILLEGAL", "Création d'arme", "Reviens dans " ..config.timetowait .."min", "CHAR_LESTER_DEATHWISH", 9)
                    Citizen.Wait(config.timetowait*60000)
                end
            end
        end
        Citizen.Wait(1)
    end
end)