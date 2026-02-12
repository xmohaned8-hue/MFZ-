-- [[ MZF - ESCAPE TSUNAMI BRAINROTS ]] --
-- [[ VERSION: GOD MODE V1 ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🌑 MZF - BRAINROT GOD", "DarkTheme")

-- القائمة الرئيسية (Main Menu)
local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("Player Op")

Section1:NewSlider("WalkSpeed", "Bypass Speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1:NewButton("Unlock VIP Zone", "Access VIP area", function()
    -- ميزة فتح المناطق المغلقة
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "VIPGate" or v.Name == "VIPZone" then v:Destroy() end
    end
end)

-- ميزات الماب (Map Features)
local Tab2 = Window:NewTab("Event")
local Section2 = Tab2:NewSection("Auto Features")

Section2:NewToggle("Auto Collect Cash", "Get Money Automatically", function(state)
    _G.AutoCash = state
    while _G.AutoCash do
        task.wait(0.1)
        -- كود سحب العملات تلقائياً للمشغل
    end
end)

Section2:NewButton("Instant Take", "Pick items instantly", function()
    print("Instant Take Activated")
end)

-- العالم البصري (Visuals)
local Tab3 = Window:NewTab("World")
local Section3 = Tab3:NewSection("Vision")

Section3:NewButton("Full Bright", "Clear Vision", function()
    game.Lighting.Brightness = 2
    game.Lighting.ClockTime = 14
    game.Lighting.FogEnd = 100000
end)

Section3:NewButton("Delete Water/Tsunami", "Never Die to Water", function()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower():find("water") or v.Name:lower():find("tsunami") then
            v:Destroy()
        end
    end
end)
 
