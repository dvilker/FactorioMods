dispatcherSignalSlotCount = 30
defaultNetworks = 1
minEnergyUseTrain = 100000000 -- 100 MJ
--minEnergyUseTrainAtDepot = 400000000


depotScheduleType = --[[---@type string]] "time"
depotScheduleTime = --[[---@type number]] 0

fuelScheduleTime = --[[---@type number]] 120

correctScheduleBeforeProvider = true
correctScheduleAndAtProvider = true

countingInsertersContent = true

updateTicks = --[[---@type number]]2

function updateConfig()
    --[[DEBUG]]log("VIIRLD: updateConfig(): dispatcherSignalSlotCount: " .. var_dump(dispatcherSignalSlotCount) .. " -> " .. var_dump(settings.startup["viirld-dispatcherSignalSlotCount"].value))
    dispatcherSignalSlotCount = settings.startup["viirld-dispatcherSignalSlotCount"].value

    --[[DEBUG]]log("VIIRLD: updateConfig(): minEnergyUseTrain: " .. var_dump(minEnergyUseTrain) .. " -> " .. var_dump(settings.global["viirld-minEnergyUseTrain"].value * 1000000))
    minEnergyUseTrain = settings.global["viirld-minEnergyUseTrain"].value * 1000000

    --[[DEBUG]]log("VIIRLD: updateConfig(): fuelScheduleTime: " .. var_dump(fuelScheduleTime) .. " -> " .. var_dump(settings.global["viirld-fuelScheduleTime"].value))
    fuelScheduleTime = settings.global["viirld-fuelScheduleTime"].value

    --[[DEBUG]]log("VIIRLD: updateConfig(): correctScheduleBeforeProvider: " .. var_dump(correctScheduleBeforeProvider) .. " -> " .. var_dump(settings.global["viirld-correctScheduleBeforeProvider"].value))
    correctScheduleBeforeProvider = settings.global["viirld-correctScheduleBeforeProvider"].value

    --[[DEBUG]]log("RLD: updateConfig(): correctScheduleAndAtProvider: " .. var_dump(correctScheduleAndAtProvider) .. " -> " .. var_dump(settings.global["viirld-correctScheduleAndAtProvider"].value))
    correctScheduleAndAtProvider = settings.global["viirld-correctScheduleAndAtProvider"].value

    --[[DEBUG]]log("RLD: updateConfig(): countingInsertersContent: " .. var_dump(countingInsertersContent) .. " -> " .. var_dump(settings.global["viirld-countingInsertersContent"].value))
    countingInsertersContent = settings.global["viirld-countingInsertersContent"].value

    --[[DEBUG]]log("RLD: updateConfig(): updateTicks: " .. var_dump(updateTicks) .. " -> " .. var_dump(settings.global["viirld-updateTicks"].value))
    if settings.global["viirld-updateTicks"].value ~= updateTicks then
        updateTicks = settings.global["viirld-updateTicks"].value
        SurClass.updateTimer()
    end
end
