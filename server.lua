ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('kurier:kolejnadostawa')
AddEventHandler('kurier:kolejnadostawa', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local cena = math.random(tonumber(Config.Zaplata['min']), tonumber(Config.Zaplata['max']))
    xPlayer.showNotification('Dostałeś do banku ~g~' .. cena .. " ~w~za dostawe paczki")
    xPlayer.addAccountMoney('bank', cena)
end)