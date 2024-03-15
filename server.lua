ESX = exports['es_extended']:getSharedObject()

RegisterCommand('setped', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getGroup() == Config.AdminGroup then
        if args[1] and args[2] then
            local targetPlayer = tonumber(args[1]) or 0
            local model = args[2]

            TriggerClientEvent('sharky_setped:changePed', targetPlayer, model)
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'SETPED',
                type = 'success',
                text = 'Megváltoztattad a PED-jét neki: ' .. targetPlayer
            })
        else
            TriggerClientEvent('chat:addMessage', source,
                { args = { '^1SETPED', 'Használata: /setped [playerId] [pedModel]' } })
        end
    else
        TriggerClientEvent('chat:addMessage', source,
            { args = { '^1SETPED', 'Nincs jogod a parancs használatához' } })
    end
end, true)
