ESX, QBCore      = nil, nil


if Config.Framework == "ESX" then
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif Config.Framework == "QBCore" then
    QBCore = exports['qb-core']:GetCoreObject()
end

AddEventHandler("playerDropped", function(reason)
    TriggerClientEvent('tp-advancedzombies:clearZombies', source)
end)


RegisterServerEvent("tp-advancedzombies:onZombieSpawningStart")
AddEventHandler("tp-advancedzombies:onZombieSpawningStart", function()
	TriggerClientEvent("tp-advancedzombies:onZombieSync", source)
end)

RegisterServerEvent('tp-advancedzombies:SyncSpeakingSoundsOnServer')
AddEventHandler('tp-advancedzombies:SyncSpeakingSoundsOnServer', function(entiyCoords)

    TriggerClientEvent('tp-advancedzombies:SyncSpeakingSoundsOnClient', source, entiyCoords)

end)

