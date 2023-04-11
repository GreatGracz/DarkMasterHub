local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "DarkMaster Hub", HidePremium = true, IntroText = "DarkMaster Hub", SaveConfig = true, ConfigFolder = "OrionTest"})

local Gracz = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Gracz:AddButton({
	Name = "Fly",
	Callback = function()
			OrionLib:MakeNotification({
				Name = "Loaded!",
				Content = "Fly GUI loaded!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
			loadstring(game:HttpGet(("https://pastebin.com/raw/tQprysuD")))()
      		print("button pressed")
  	end    
})

Gracz:AddSlider({
	Name = "Walkspeed",
	Min = 1,
	Max = 150,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "studs/second",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

Gracz:AddSlider({
	Name = "Jumppower",
	Min = 1,
	Max = 150,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})

local Skrypty = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Skrypty:AddButton({
	Name = "Eternity Hub",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Loaded!",
			Content = "Eternity Hub loaded!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		loadstring(game:HttpGet("https://eternityhub.xyz/Script/Eternity.lua"))()
  	end    
})

Skrypty:AddButton({
	Name = "Fates Admin",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Loaded!",
			Content = "Fates Admin loaded!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
  	end    
})

OrionLib:Init()
