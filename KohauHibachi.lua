local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Kohaú Hibachi Restaunt Mop Autofarm", HidePremium = true, SaveConfig = false, ConfigFolder = "KohauAutoFarm"})
local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Autofarm",
	Default = false,
	Callback = function(toggle)
		while toggle do
            for i,v in pairs(workspace.Assets.Spills:GetChildren()) do
                if v and v.Name == "Spill" and toggle then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1593, -315, -1364)
                    local ohNumber1 = 1
                    local ohInstance2 = v
                    local ohString3 = "Mop"
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.InteractionService.RF.Clicked:InvokeServer(ohNumber1, ohInstance2, ohString3)
                    print(v, "done")
                    task.wait()
                end
            end
        end
	end    
})

Tab:AddButton({
	Name = "Reset Character",
	Callback = function()
      	game.Players.LocalPlayer.Character:BreakJoints()
  	end    
})