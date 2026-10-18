-- Main server script for house robbery

-- ESX initialization
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Register command to add robbery locations
    RegisterNetEvent('houseRobbery:addLocation')
    AddEventHandler('houseRobbery:addLocation', function(coords, heading)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)

        -- Check if player is admin
        if xPlayer.getGroup() == 'admin' then
            -- Save location to database or file
            SaveRobberyLocation(coords, heading)
            TriggerClientEvent('esx:showNotification', _source, 'Robbery location added!')
        else
            TriggerClientEvent('esx:showNotification', _source, 'You do not have permission to add robbery locations!')
        end
    end)

    -- Function to save robbery location
    function SaveRobberyLocation(coords, heading)
        -- Implementation to save location
        -- This could be saving to a database or a file
    end
end)