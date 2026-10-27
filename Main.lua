
-- Marco Scripts | Blue UI
-- For your own Roblox game
-- Place in a LocalScript in StarterPlayerScripts

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MarcoScripts"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 280, 0, 180)
frame.Position = UDim2.new(0.5, -140, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(15, 25, 45)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundColor3 = Color3.fromRGB(25, 100, 220)
title.Text = "Marco Scripts"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -30, 0, 45)
button.Position = UDim2.new(0, 15, 0, 65)
button.BackgroundColor3 = Color3.fromRGB(35, 120, 255)
button.Text = "Test Button"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Font = Enum.Font.GothamBold
button.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -20, 0, 35)
status.Position = UDim2.new(0, 10, 0, 125)
status.BackgroundTransparency = 1
status.Text = "Status: Ready"
status.TextColor3 = Color3.fromRGB(180, 210, 255)
status.TextScaled = true
status.Parent = frame

button.Activated:Connect(function()
    status.Text = "Marco Scripts is working!"
end)

gui.Parent = player:WaitForChild("PlayerGui")
print("Marco Scripts loaded successfully!")
