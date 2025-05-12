-- GUI Banana Hub (Giống giao diện thật, không chức năng)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local ExecuteBtn = Instance.new("TextButton")
local CloseBtn = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "BananaHubGUI"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 250)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.Text = "Banana Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 0)
Title.TextScaled = true

Tab1.Name = "Tab1"
Tab1.Parent = MainFrame
Tab1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Tab1.Position = UDim2.new(0.05, 0, 0.25, 0)
Tab1.Size = UDim2.new(0, 150, 0, 40)
Tab1.Font = Enum.Font.Gotham
Tab1.Text = "Speed"
Tab1.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1.TextSize = 14.0

Tab2.Name = "Tab2"
Tab2.Parent = MainFrame
Tab2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Tab2.Position = UDim2.new(0.05, 0, 0.45, 0)
Tab2.Size = UDim2.new(0, 150, 0, 40)
Tab2.Font = Enum.Font.Gotham
Tab2.Text = "Fly"
Tab2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab2.TextSize = 14.0

ExecuteBtn.Name = "ExecuteBtn"
ExecuteBtn.Parent = MainFrame
ExecuteBtn.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
ExecuteBtn.Position = UDim2.new(0.6, 0, 0.8, 0)
ExecuteBtn.Size = UDim2.new(0, 130, 0, 35)
ExecuteBtn.Font = Enum.Font.GothamBold
ExecuteBtn.Text = "Execute"
ExecuteBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
ExecuteBtn.TextSize = 14.0

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseBtn.Position = UDim2.new(0.9, -30, 0, 10)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.Gotham
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14.0
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
