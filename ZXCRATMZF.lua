-- [[ MZF ULTIMATE BRAINROT BYPASS V2 ]] --
-- [[ FILE: ZXCRATMZF.lua ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🌑 MZF - BRAINROT GOD MODE", "DarkTheme")

-- Tab: القوة البدنية (Movement)
local Tab1 = Window:NewTab("Movement")
local Section1 = Tab1:NewSection("God Speed & Fly")

Section1:NewSlider("WalkSpeed", "Speed Bypass", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1:NewButton("Infinite Jump", "Jump to the Moon", function()
    game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end)
end)

-- Tab: ميزات الماب (Tsunami Features)
local Tab2 = Window:NewTab("Tsunami Bypass")
local Section2 = Tab2:NewSection("Survival Mode")

Section2:NewToggle("God Mode (Noclip)", "Walk through walls", function(state)
    _G.Noclip = state
    game:GetService("RunService").Stepped:Connect(function()
        if _G.Noclip then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
        end
    end)
end)

Section2:NewButton("Delete Tsunami", "Removes the Wave (Client Side)", function()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower():find("tsunami") or v.Name:lower():find("water") then
            v:Destroy()
        end
    end
end)

-- Tab: عالمي (Visuals)
local Tab3 = Window:NewTab("World")
local Section3 = Tab3:NewSection("Anti-Lag & Vision")

Section3:NewButton("Full Bright", "See in Dark", function()
    game.Lighting.Brightness = 2
    game.Lighting.ClockTime = 14
    game.Lighting.FogEnd = 100000
end)

Section3:NewButton("Remove Textures (FPS Boost)", "Zero Lag", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end
    end
end)

print("🌑 ZXCRATMZF LOADED SUCCESSFULLY!")
 
