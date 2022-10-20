----Gets ESX-------------------------------------------------------------------------------------------------------------------------------
ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('esx:onPlayerSpawn', function()
    local ped = PlayerPedId()
end)
---------------------------------------------------------------------------------------------------------------------------------------
local locationid = nil
local locationprice = nil
local locationkey = nil


--Qtaret Zones for each MLO
Citizen.CreateThread(function()
    local locationConfig = Config.Locations

	for i = 1, #locationConfig, 1 do

        local locationid = locationConfig[i].location
        local locationprice = locationConfig[i].price
        local locationkey = locationConfig[i].keyname

        exports['qtarget']:AddBoxZone(locationConfig[i].name, locationConfig[i].coords, locationConfig[i].q_length, locationConfig[i].q_width, {
            name= locationConfig[i].name,
            heading= locationConfig[i].q_heading,
            debugPoly= false,
            minZ= locationConfig[i].q_minZ,
            maxZ= locationConfig[i].q_maxZ
        }, {
            options = {
                {
                    event = "koe_mlobuy:checkIfOwned",
                    icon = "fas fa-house",
                    label = 'Open menu for '..locationid,
                    location = locationid,
                    price = locationprice,
                    locationkey = locationkey,
                    canInteract = function()
                        local player = PlayerPedId()
                        return IsPedOnFoot(player)
                    end,
                }
            },
            distance = 2.5
        })
    end
end)
   
RegisterNetEvent('koe_mlobuy:checkIfOwned')
AddEventHandler('koe_mlobuy:checkIfOwned',function(data)
    locationid = data.location
    locationprice = data.price
    locationkey = data.locationkey

    TriggerServerEvent('koe_mlobuy:getOwner', locationid, locationprice, locationkey)
end)

RegisterNetEvent('koe_mlobuy:buyMenu')
AddEventHandler('koe_mlobuy:buyMenu',function(locationid, locationprice, locationkey)

    lib.registerContext({
        id = 'propertymenu',
        title = 'Purchase Property',
        options = {
            ['Purchase This Property '] = {
                description = 'Purchase ' ..locationid.. ' for $' ..locationprice,
                arrow = true,
                event = 'koe_mlobuy:purchaseProperty',
                args = {locationprice = locationprice, locationid = locationid, locationkey = locationkey},
                metadata = {'Purchase with cash'}
            }
        }
    })
    lib.showContext('propertymenu')
end)

RegisterNetEvent('koe_mlobuy:purchaseProperty')
AddEventHandler('koe_mlobuy:purchaseProperty',function(data,locationid, locationprice, locationkey)
    locationprice = data.locationprice
    locationid = data.locationid
    locationkey = data.locationkey

    TriggerServerEvent('koe_mlobuy:purchaseTheProperty', locationid, locationprice, locationkey)
end)


RegisterNetEvent('koe_mlobuy:ownerMenu')
AddEventHandler('koe_mlobuy:ownerMenu',function(locationid, locationprice, locationkey)

    lib.registerContext({
        id = 'ownermenu',
        title = 'Property Manager',
        options = {
            ['Duplicate Property Key'] = {
                description = 'Purchase a copy of your property key',
                arrow = true,
                event = 'koe_mlobuy:duplicateKey',
                args = {locationprice = locationprice, locationid = locationid, locationkey = locationkey},
                metadata = {'Get a new key!'}
            }
        }
    })
    lib.showContext('ownermenu')
end)

RegisterNetEvent('koe_mlobuy:duplicateKey')
AddEventHandler('koe_mlobuy:duplicateKey',function(data)
    locationkey = data.locationkey
    TriggerServerEvent('koe_mlobuy:getNewKey', locationkey)
end)
