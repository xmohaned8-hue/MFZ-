-- [[ MZF BLADE MASTER | VANTABLACK EDITION ]] --
-- [[ TARGET: BLADE BALL ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🌑 MZF - BLADE MASTER V1", "DarkTheme")

-- Tab: القوة المطلقة (Combat)
local Tab1 = Window:NewTab("Combat")
local Section1 = Tab1:NewSection("Auto Deflect & Reach")

Section1:NewButton("God Mode (Auto Parry)", "Deflect the ball automatically", function()
    -- محرك الصد التلقائي المطور
    local LP = game.Players.LocalPlayer
    game:GetService("RunService").PreRender:Connect(function()
        for _, ball in pairs(game.Workspace.Balls:GetChildren()) do
            local distance = (LP.Character.HumanoidRootPart.Position - ball.Position).Magnitude
            if distance <= 25 then -- المسافة المثالية للصد
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
            end
        end
    end)
    print("MZF: AUTO PARRY ACTIVE ✅")
end)

Section1:NewSlider("Deflect Range", "Change Parry Distance", 50, 10, function(v)
    _G.ParryRange = v
end)

-- Tab: التحركات (Movement)
local Tab2 = Window:NewTab("Movement")
local Section2 = Tab2:NewSection("Speed & Agility")

Section2:NewSlider("WalkSpeed", "Fast Movement", 200, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewButton("Invisible Mode", "Ghost on the map", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Transparency = 0.5
    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end
end)

-- Tab: البصريات (Visuals)
local Tab3 = Window:NewTab("Visuals")
local Section3 = Tab3:NewSection("Ball ESP")

Section3:NewButton("Highlight Ball", "Never lose the ball", function()
    for _, b in pairs(game.Workspace.Balls:GetChildren()) do
        local highlight = Instance.new("Highlight")
        highlight.Parent = b
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
    end
end)

print("🌑 ZXCRATMZF BLADE MASTER LOADED!")
