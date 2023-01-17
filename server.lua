ESX = exports["es_extended"]:getSharedObject()


ESX.RegisterServerCallback("getnazwaallczaiszkurwojebana", function(source, cb, target, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerIdentifier = xPlayer.getIdentifier()
    MySQL.single('SELECT * FROM users WHERE identifier = ?', {playerIdentifier}, function(row)
        cb({
            imie = row.firstname,
            nazwisko = row.lastname,
            plec = row.sex,
            ssn = row.ssn,
        })
    end)
end)