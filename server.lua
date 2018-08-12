Citizen.CreateThread(function()
	MySQL.ready(function ()
		print("User Active System by redoper & feťo started!")
	end)
end)
function getIdentity(source)
    local identifier = GetPlayerIdentifiers(source)[1]
    local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
    if result[1] ~= nil then
        local identity = result[1]

        return {
            identifier = identity['identifier'],
        }
    else
        return nil
    end
end
AddEventHandler('es:playerLoaded', function(source)
	local Identifier = GetPlayerIdentifiers(source)[1]
	local now = os.date()
	MySQL.Async.execute('UPDATE `users` SET `last_connected`=@now WHERE `identifier`=@identifier;', {['@identifier'] = Identifier, ['@now'] = now}, nil)
end)
