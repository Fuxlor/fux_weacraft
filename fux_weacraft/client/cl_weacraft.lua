ESX = nil

--==== ESX

Citizen.CreateThread(function()
    print('^1Script De Fuxlor, Démarré !')
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(1)
	end
end)

function MenuY()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openGUI',
    })
    guiStatus = true
    -- ESX.ShowNotification('~r~Envoyé : ~b~(openGUI)', false, false, nil)
    -- print('^1Envoyé : ^4(openGUI)')
end

function MenuN()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = 'closeGUI',
    })
    guiStatus = false
    -- ESX.ShowNotification('~r~Envoyé : ~b~(closeGUI)', false, false, nil)
    -- print('^1Envoyé : ^4(closeGUI)')
end

Citizen.CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())
        local pos = vector3(config.menupos.x, config.menupos.y, config.menupos.z)
        local dist = GetDistanceBetweenCoords(playerPos, pos, true)

        if dist < 1.5 then
            DrawMarker(20, config.menupos.x, config.menupos.y, config.menupos.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 50, false, true, 2, nil, nil, false)
            AddTextEntry("Leave", "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Craft")
            DisplayHelpTextThisFrame("Leave", false)
            if IsControlJustReleased(0, 51) then
                MenuY()
            end
        end
        Citizen.Wait(1)
    end
end)

RegisterNUICallback('close', function(data, cb)
    MenuN()
end)

RegisterNUICallback('craftPistol', function(data, cb)
    TriggerServerEvent('WC:craftPistol')
end)

RegisterNUICallback('craftRevolver', function(data, cb)
    TriggerServerEvent('WC:craftRevolver')
end)

RegisterNUICallback('craftSMG', function(data, cb)
    TriggerServerEvent('WC:craftSMG')
end)

RegisterNUICallback('craftAK', function(data, cb)
    TriggerServerEvent('WC:craftAK')
end)