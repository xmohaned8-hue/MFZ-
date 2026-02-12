-- [[ MZF ULTIMATE - ZXCRATMZF.lua ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🌑 ZXCRATMZF - BRAINROT GOD", "DarkTheme")

-- القائمة الأساسية
local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("Player & VIP")

-- حل مشكلة الـ VIP: حذف الحواجز التي تمنعك من الدخول
Section1:NewButton("Unlock VIP Zone", "Force Open VIP", function()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower():find("vip") and (v:IsA("BasePart") or v:IsA("Model")) then
            v.CanCollide = false
            v.Transparency = 0.5
            if v:IsA("BasePart") then v:Destroy() end
        end
    end
    print("MZF: VIP UNLOCKED ✅")
end)

Section1:NewSlider("WalkSpeed", "Fast Speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- ميزة الـ Water و Tsunami
local Tab2 = Window:NewTab("Tsunami Control")
local Section2 = Tab2:NewSection("God Mode Settings")

-- ميزة الـ Delete Water: تجعلك لا تتأثر بالماء نهائياً
Section2:NewButton("God Mode (Anti-Tsunami)", "Water won't kill you", function()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") and (v.Parent.Name:lower():find("water") or v.Parent.Name:lower():find("tsunami")) then
            v:Destroy() -- حذف مستشعر الموت في الماء
        end
    end
    print("MZF: GOD MODE ACTIVE - WATER IS SAFE ✅")
end)

-- ميزات إضافية للماب
local Tab3 = Window:NewTab("Extra")
local Section3 = Tab3:NewSection("Automation")

Section3:NewToggle("Auto Collect Cash", "Get money", function(state)
    _G.Collect = state
    while _G.Collect do
        task.wait(0.1)
        -- هنا يوضع كود سحب الكاش البرمجي للماب
    end
end)
 
