-- Create the main GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.ResetOnSpawn = false

-- Create the background Frame with slight opacity and a blue/white color scheme
local background = Instance.new("Frame")
background.Size = UDim2.new(0.5, 0, 0.5, 0)
background.Position = UDim2.new(0.25, 0, 0.25, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 102, 204)  -- Blue background
background.BackgroundTransparency = 0.2  -- Slight opacity
background.Parent = screenGui

-- Add title text
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Get Free Robux on BloxAwards!"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
titleLabel.TextSize = 24
titleLabel.TextAlign = Enum.TextAlign.Center
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = background

-- Add a description text about how BloxAwards gives Robux
local descriptionLabel = Instance.new("TextLabel")
descriptionLabel.Size = UDim2.new(1, 0, 0.4, 0)
descriptionLabel.Position = UDim2.new(0, 0, 0.2, 0)
descriptionLabel.Text = "Complete tasks on BloxAwards and earn Robux! It's easy and free."
descriptionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
descriptionLabel.TextSize = 18
descriptionLabel.TextWrapped = true
descriptionLabel.TextAlign = Enum.TextAlign.Center
descriptionLabel.BackgroundTransparency = 1
descriptionLabel.Parent = background

-- Create the 'Click to Get Robux' button
local robuxButton = Instance.new("TextButton")
robuxButton.Size = UDim2.new(0.8, 0, 0.2, 0)
robuxButton.Position = UDim2.new(0.1, 0, 0.7, 0)
robuxButton.Text = "Click to Get Robux!"
robuxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
robuxButton.BackgroundColor3 = Color3.fromRGB(0, 102, 204)  -- Blue button
robuxButton.TextSize = 20
robuxButton.Parent = background

-- Function to open the website when the button is clicked
robuxButton.MouseButton1Click:Connect(function()
    -- Open the website in the browser
    game:GetService("StarterGui"):SetCore("OpenUrl", "https://lootdest.org/s?NjHpfi1J")
    
    -- Optional: You could add a message or another interaction after clicking
    print("Opening website for Robux!")
end)
