-- Variations of the house robbery

-- Variables
local robberyVariations = {
    {
        name = 'apartment',
        lockpickTime = 5000,
        soundLevelIncrease = 10,
        cabinetSearchTime = 3000
    },
    {
        name = 'house',
        lockpickTime = 7000,
        soundLevelIncrease = 15,
        cabinetSearchTime = 5000
    },
    {
        name = 'mansion',
        lockpickTime = 10000,
        soundLevelIncrease = 20,
        cabinetSearchTime = 7000
    },
    {
        name = 'safehouse',
        lockpickTime = 3000,
        soundLevelIncrease = 5,
        cabinetSearchTime = 2000
    },
    {
        name = 'vault',
        lockpickTime = 15000,
        soundLevelIncrease = 25,
        cabinetSearchTime = 10000
    }
}

-- Function to get robbery variation
function GetRobberyVariation(name)
    for _, variation in ipairs(robberyVariations) do
        if variation.name == name then
            return variation
        end
    end
    return nil
end