repeat
    task.wait()
until game.GameId ~= nil
repeat
    task.wait()
until game:IsLoaded()

if getgenv().loaded then
    return
end
getgenv().loaded = true

universeid = game.GameId

print("join https://dsc.gg/argonscripts")

if universeid == 920587237 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Loads-games/refs/heads/main/Adm.lua", true))()
end

if universeid == 8737899170 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Loads-games/refs/heads/main/Ps99.lua", true))()
end

if universeid == 6284583030 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Loads-games/refs/heads/main/Psx.lua", true))()
end
