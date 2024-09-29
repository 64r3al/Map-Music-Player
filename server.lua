local currentVolume = 0.5

RegisterNetEvent('music:play')
AddEventHandler('music:play', function(url)
    TriggerClientEvent('music:playSound', -1, url, currentVolume)
end)

RegisterNetEvent('music:stop')
AddEventHandler('music:stop', function()
    TriggerClientEvent('music:stopSound', -1)
end)

RegisterNetEvent('music:pause')
AddEventHandler('music:pause', function()
    TriggerClientEvent('music:pauseSound', -1)
end)

RegisterNetEvent('music:setVolume')
AddEventHandler('music:setVolume', function(volume)
    currentVolume = volume
    TriggerClientEvent('music:setSoundVolume', -1, volume)
end)
