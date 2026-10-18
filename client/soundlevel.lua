-- Sound level bar implementation

-- Variables
local soundLevel = 0
local maxSoundLevel = 100

-- Function to update sound level
function UpdateSoundLevel(level)
    soundLevel = level
    if soundLevel > maxSoundLevel then
        soundLevel = maxSoundLevel
    elseif soundLevel < 0 then
        soundLevel = 0
    end

    -- Update UI
    SendNUIMessage({
        type = 'soundlevel',
        level = soundLevel,
        maxLevel = maxSoundLevel
    })

    -- Check if sound level is too high
    if soundLevel >= maxSoundLevel then
        TriggerEvent('houseRobbery:soundLevelMax')
    end
end

-- Event handler for sound level max
RegisterNetEvent('houseRobbery:soundLevelMax')
AddEventHandler('houseRobbery:soundLevelMax', function()
    -- Handle maximum sound level reached
end)