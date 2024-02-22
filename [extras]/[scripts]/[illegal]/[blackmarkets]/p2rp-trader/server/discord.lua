-- [[ CHANGE THE DISCORD WEBHOOK ]]
local discordWebhook = 'https://discord.com/api/webhooks/1210260095653515264/E7hh_iUf-rSCYrhJKJQHIwIn5Kat_jLWnv1wnz3s5YVzRj7Ym87zLQdVbLpKaViM9Vlk'

function sendToDiscord(color, name, message, footer)
	local embed = {
		{
			["color"] = color,
			["title"] = "**".. name .."**",
			["description"] = message,
			["footer"] = {
				["text"] = footer,
			},
		}
	}
  
	PerformHttpRequest(discordWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end