-- [[ MZF OFFICIAL UNIVERSAL SCRIPT ]] --
-- [[ SYSTEM: ZXCRATMZF OMNI ]] --

local LP = game.Players.LocalPlayer
local RS = game:GetService("RunService")

print("🌑 ZXCRATMZF SYSTEM: ONLINE ✅")

RS.RenderStepped:Connect(function()
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        local HRP = LP.Character.HumanoidRootPart
        local Hum = LP.Character.Humanoid
        if Hum.MoveDirection.Magnitude > 0 then
            HRP.CFrame = HRP.CFrame + (Hum.MoveDirection * 2.5)
        end
        for _, v in pairs(LP.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

game.Lighting.Brightness = 2
game.Lighting.FogEnd = 1e5
for _, v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") then 
        v.Material = Enum.Material.SmoothPlastic 
        v.CastShadow = false
    end
end
