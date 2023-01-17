ESX = exports["es_extended"]:getSharedObject()
local on = false

function pokadowodsobie(bool)
    on = bool
    SendNUIMessage({
        status = on,
    })
    Wait(5000)
    SendNUIMessage({
        status = off,
    })
end


RegisterNUICallback('exit', function(data)
    display(false)
end)

RegisterCommand('dowod', function(data)
    pokadowodsobie(not on)
end)

