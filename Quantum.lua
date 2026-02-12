-- [[ MZF OFFICIAL UNIVERSAL SCRIPT ]] --
-- [[ OWNER: xmohaned8-hue ]] --

local LP = game.Players.LocalPlayer
local RS = game:GetService("RunService")

-- محرك السرعة واختراق الجدران
RS.RenderStepped:Connect(function()
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        local HRP = LP.Character.HumanoidRootPart
        local Hum = LP.Character.Humanoid
        if Hum.MoveDirection.Magnitude > 0 then
            HRP.CFrame = HRP.CFrame + (Hum.MoveDirection * 2.5)
        end
        -- خاصية الـ Noclip
        for _, v in pairs(LP.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

-- تنوير الماب وإزالة اللاق
game.Lighting.Brightness = 2
game.Lighting.FogEnd = 1e5
for _,v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") then v.Material = "SmoothPlastic" end
end

print("🌑 MZF QUANTUM ACTIVE ✅")
 
