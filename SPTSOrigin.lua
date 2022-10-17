local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SPTS: Origin", HidePremium = true, SaveConfig = true, ConfigFolder = "SPTSOriginScript"})

getgenv().autoPunchToggle = false
getgenv().bodyZone = 1

local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("This GUI is made to make you look legit")

Tab:AddLabel("(mostly because i have a scripting skill issue)")

Tab:AddLabel("You have to walk to the training zone manually")

Tab:AddDropdown({
	Name = "Select FS training zone, 1 for none, 2 for large rock",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		bodyZone = Value
	end    
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
            local ohTable1 = {[1] = "Add_FS_Request", [2] = bodyZone}
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
            task.wait()
        end
    end)
end

OrionLib:Init()
