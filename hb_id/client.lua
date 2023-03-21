local Player_Id = GetPlayerServerId(NetworkGetPlayerIndexFromPed(PlayerPedId()))

RegisterCommand("id",function(source,args,rawCommand)
    Notif("Your server ID is: "..GetPlayerServerId(NetworkGetPlayerIndexFromPed(PlayerPedId())))
end)

function Notif(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function Notif(text)
    exports['okokNotify']:Alert("Player ID: "..Player_Id, text, 3000, 'warning')
end
