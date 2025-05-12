-- Banana Hub Clone GUI with Toggles
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local StatsFrame = Instance.new("Frame")
local ToggleBtn = Instance.new("TextButton")

-- Toggle UI
ScreenGui.Name = "BananaHubClone"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Visible = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "Banana Hub (Clone)"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

StatsFrame.Name = "StatsFrame"
StatsFrame.Parent = MainFrame
StatsFrame.Position = UDim2.new(0, 10, 0, 50)
StatsFrame.Size = UDim2.new(0, 380, 0, 240)
StatsFrame.BackgroundTransparency = 1

-- Function to create toggle switch
local function createToggle(name, posY)
	local toggle = Instance.new("TextButton")
	toggle.Parent = StatsFrame
	toggle.Name = name
	toggle.Position = UDim2.new(0, 0, 0, posY)
	toggle.Size = UDim2.new(0, 200, 0, 30)
	toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	toggle.TextColor3 = Color3.new(1, 1, 1)
	toggle.Font = Enum.Font.SourceSans
	toggle.TextSize = 18
	toggle.Text = name .. ": OFF"

	local state = false
	toggle.MouseButton1Click:Connect(function()
		state = not state
		toggle.Text = name .. ": " .. (state and "ON" or "OFF")
		-- Bạn có thể gắn thêm hành động AutoFarm ở đây
	end)
end

-- Add toggles
createToggle("Auto Melee", 0)
createToggle("Auto Defense", 35)
createToggle("Auto Sword", 70)
createToggle("Auto Gun", 105)

-- Nút đóng/mở GUI
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0, 10, 0, 10)
ToggleBtn.Size = UDim2.new(0, 80, 0, 30)
ToggleBtn.Text = "Toggle UI"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
ToggleBtn.TextColor3 = Color3.new(1, 1, 1)
local visible = true
ToggleBtn.MouseButton1Click:Connect(function()
	visible = not visible
	MainFrame.Visible = visible
end)
