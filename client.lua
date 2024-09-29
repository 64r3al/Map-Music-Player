local isPlaying = false

RegisterCommand('mscplay', function()
    SendNUIMessage({ action = "toggleUI", display = true })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('playMusic', function(data)
    local url = data.url
    TriggerServerEvent('music:play', url)
    isPlaying = true
end)

RegisterNUICallback('pauseMusic', function()
    TriggerServerEvent('music:pause') -- Send the pause event to the server
end)

RegisterNUICallback('stopMusic', function()
    TriggerServerEvent('music:stop')
    isPlaying = false
end)

RegisterNUICallback('setVolume', function(data)
    local volume = data.volume
    TriggerServerEvent('music:setVolume', volume)
end)

RegisterNUICallback('closeUI', function()
    SendNUIMessage({ action = "toggleUI", display = false })
    SetNuiFocus(false, false)
end)

RegisterNetEvent('music:playSound')
AddEventHandler('music:playSound', function(url, volume)
    exports['xsound']:PlayUrl("music", url, volume, true, {})
    exports['xsound']:setVolume("music", volume)
end)

RegisterNetEvent('music:stopSound')
AddEventHandler('music:stopSound', function()
    exports['xsound']:Destroy("music")
end)

RegisterNetEvent('music:setSoundVolume')
AddEventHandler('music:setSoundVolume', function(volume)
    exports['xsound']:setVolume("music", volume)
end)

RegisterNetEvent('music:pauseSound')
AddEventHandler('music:pauseSound', function()
    exports['xsound']:Pause("music") -- This pauses the music
end)
