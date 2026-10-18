-- Main client script for house robbery

-- ESX initialization
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Register command to add robbery locations
    RegisterCommand('addrobberylocation', function(source, args)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local heading = GetEntityHeading(playerPed)

        -- Send coordinates to server
        TriggerServerEvent('houseRobbery:addLocation', coords, heading)
    end, false)

    -- Event to start robbery
    RegisterNetEvent('houseRobbery:startRobbery')
    AddEventHandler('houseRobbery:startRobbery', function(location)
        -- Start robbery process
        StartRobbery(location)
    end)
end)

-- Function to start robbery
function StartRobbery(location)
    -- Implementation will be added in other files
end