-- Lockpicking minigame

-- Variables
local isLockpicking = false
local success = false

-- Function to start lockpicking
function StartLockpicking()
    isLockpicking = true
    success = false

    -- Create lockpicking UI
    SendNUIMessage({
        type = 'lockpicking',
        action = 'start'
    })

    -- Start lockpicking timer
    Citizen.CreateThread(function()
        while isLockpicking do
            Citizen.Wait(0)
            -- Check for success or failure
            if success then
                isLockpicking = false
                TriggerEvent('houseRobbery:lockpickSuccess')
            elseif not isLockpicking then
                TriggerEvent('houseRobbery:lockpickFail')
            end
        end
    end)
end

-- Event handler for lockpicking success
RegisterNetEvent('houseRobbery:lockpickSuccess')
AddEventHandler('houseRobbery:lockpickSuccess', function()
    -- Handle successful lockpicking
end)

-- Event handler for lockpicking failure
RegisterNetEvent('houseRobbery:lockpickFail')
AddEventHandler('houseRobbery:lockpickFail', function()
    -- Handle failed lockpicking
end)