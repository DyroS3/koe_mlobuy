----Gets ESX-----
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('koe_mlobuy:getOwner')
AddEventHandler('koe_mlobuy:getOwner', function(locationid, locationprice, locationkey)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local identifier =  ESX.GetPlayerFromId(src).identifier

    MySQL.Async.fetchAll('SELECT * FROM owned_mlos WHERE location = @location',
    { 
      ['@identifier'] = owner,
      ['@location'] = locationid
    }, 
    function(result)
        if result[1].identifier == nil then
          TriggerClientEvent('koe_mlobuy:buyMenu', src, locationid, locationprice, locationkey)
        elseif result[1].identifier == identifier then
          TriggerClientEvent('koe_mlobuy:ownerMenu', src, locationid, locationprice, locationkey)
        else
          TriggerClientEvent('ox_lib:notify', src, {type = 'error', description = "This property is owned."})
        end
    end)

end)


RegisterNetEvent('koe_mlobuy:purchaseTheProperty')
AddEventHandler('koe_mlobuy:purchaseTheProperty', function(locationid, locationprice, locationkey)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  local identifier =  ESX.GetPlayerFromId(src).identifier
  MySQL.Async.fetchAll('SELECT * FROM owned_mlos WHERE location = @location',
  { 
    ['@identifier'] = owner,
  },
  function(result2) 
          if xPlayer.getMoney() >= locationprice then
            MySQL.Async.fetchAll("UPDATE owned_mlos SET identifier = @identifier WHERE location = @location",{['@identifier']  = identifier, ['@location'] = locationid}, function(result)
            end)
            xPlayer.removeMoney(locationprice)
            print(locationkey)
            TriggerClientEvent('ox_lib:notify', src, {type = 'success', description = "Purchased "..locationid.. " for $"..locationprice})
            xPlayer.addInventoryItem(locationkey, 1)
          else
            TriggerClientEvent('ox_lib:notify', src, {type = 'error', description = "Not enough money"})
          end
  end)
end)

RegisterNetEvent('koe_mlobuy:getNewKey')
AddEventHandler('koe_mlobuy:getNewKey', function(locationkey)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  local identifier =  ESX.GetPlayerFromId(src).identifier

        if exports.ox_inventory:CanCarryItem(src, locationkey, 1) then
            xPlayer.addInventoryItem(locationkey, 1)
        else
            TriggerClientEvent('okokNotify:Alert', source, "Mining", "Not enough space", 8000, 'error')
        end
end)