-- Cabinet search minigame

-- Variables
local isSearching = false
local success = false

-- Function to start cabinet search
function StartCabinetSearch()
    isSearching = true
    success = false

    -- Create cabinet search UI
    SendNUIMessage({
        type = 'cabinetsearch',
        action = 'start'
    })

    -- Start cabinet search timer
    Citizen.CreateThread(function()
        while isSearching do
            Citizen.Wait(0)
            -- Check for success or failure
            if success then
                isSearching = false
                TriggerEvent('houseRobbery:cabinetSearchSuccess')
            elseif not isSearching then
                TriggerEvent('houseRobbery:cabinetSearchFail')
            end
        end
    end)
end

-- Event handler for cabinet search success
RegisterNetEvent('houseRobbery:cabinetSearchSuccess')
AddEventHandler('houseRobbery:cabinetSearchSuccess', function()
    -- Handle successful cabinet search
end)

-- Event handler for cabinet search failure
RegisterNetEvent('houseRobbery:cabinetSearchFail')
AddEventHandler('houseRobbery:cabinetSearchFail', function()
    -- Handle failed cabinet search
end)