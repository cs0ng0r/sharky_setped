RegisterNetEvent('sharky_setped:changePed')
AddEventHandler('sharky_setped:changePed', function(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500)
    end
    SetPlayerModel(PlayerId(), model)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(model)
end)
