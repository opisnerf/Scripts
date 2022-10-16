local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SPTS: Origin", HidePremium = true, SaveConfig = true, ConfigFolder = "SPTSOriginScript"})

getgenv().autoPunchToggle = false

local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Punch",
	Default = false,
	Callback = function(bool)
		autoPunchToggle = bool
		if bool then
		    autoPunch()
		end
    end
})

function autoPunch()
    spawn(function()
        while autoPunchToggle do
            local ohTable1 = {[1] = "Add_FS_Request", [2] = 1}
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
            task.wait()
        end
    end)
end

OrionLib:Init()