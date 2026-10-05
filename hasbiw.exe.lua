--[[
    ╔═══════════════════════════════════════════════════════════════╗
    ║                                                               ║
    ║   ██╗  ██╗ █████╗ ███████╗██████╗ ██╗    ██╗    ███████╗██╗  ██╗███████╗██████╗ ███████╗
    ║   ██║  ██║██╔══██╗██╔════╝██╔══██╗██║    ██║    ██╔════╝╚██╗██╔╝██╔════╝██╔══██╗██╔════╝
    ║   ███████║███████║███████╗██████╔╝██║ █╗ ██║    █████╗   ╚███╔╝ █████╗  ██████╔╝█████╗  
    ║   ██╔══██║██╔══██║╚════██║██╔═══╝ ██║███╗██║    ██╔══╝   ██╔██╗ ██╔══╝  ██╔══██╗██╔══╝  
    ║   ██║  ██║██║  ██║███████║██║     ╚███╔███╔╝    ███████╗██╔╝ ██╗███████╗██║  ██║███████╗
    ║   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝      ╚══╝╚══╝     ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝
    ║                                                               ║
    ║                    SOUTH BRONX: THE TRENCHES                 ║
    ║                      PREMIUM EDITION v2.0                    ║
    ║                         BY HASBIW.EXE                         ║
    ║                                                               ║
    ╚═══════════════════════════════════════════════════════════════╝
    
    ACCESS CODE: HASBIW.EXE ONTOP
    STATUS: UNDETECTED | DELTA EXECUTOR READY
]]

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = Workspace.CurrentCamera

-- Access Code Verification
local ACCESS_CODE = "HASBIW.EXE ONTOP"
local VERIFIED = false

-- Create Access Code GUI
local AccessGui = Instance.new("ScreenGui")
AccessGui.Name = "HasbiwAccess"
AccessGui.Parent = game.CoreGui
AccessGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AccessGui.ResetOnSpawn = false

local AccessFrame = Instance.new("Frame")
AccessFrame.Name = "AccessFrame"
AccessFrame.Size = UDim2.new(0, 450, 0, 280)
AccessFrame.Position = UDim2.new(0.5, -225, 0.5, -140)
AccessFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
AccessFrame.BorderSizePixel = 0
AccessFrame.Parent = AccessGui

-- Gradient Background
local AccessGradient = Instance.new("UIGradient")
AccessGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 25)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(25, 0, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 15))
})
AccessGradient.Rotation = 45
AccessGradient.Parent = AccessFrame

local AccessCorner = Instance.new("UICorner")
AccessCorner.CornerRadius = UDim.new(0, 15)
AccessCorner.Parent = AccessFrame

-- Glow Effect
local Glow = Instance.new("ImageLabel")
Glow.Name = "Glow"
Glow.Size = UDim2.new(1, 60, 1, 60)
Glow.Position = UDim2.new(0, -30, 0, -30)
Glow.BackgroundTransparency = 1
Glow.Image = "rbxassetid://4996891970"
Glow.ImageColor3 = Color3.fromRGB(147, 0, 211)
Glow.ImageTransparency = 0.6
Glow.Parent = AccessFrame

-- Title
local AccessTitle = Instance.new("TextLabel")
AccessTitle.Name = "Title"
AccessTitle.Size = UDim2.new(1, 0, 0, 50)
AccessTitle.Position = UDim2.new(0, 0, 0, 20)
AccessTitle.BackgroundTransparency = 1
AccessTitle.Text = "HASBIW.EXE"
AccessTitle.TextColor3 = Color3.fromRGB(147, 0, 211)
AccessTitle.TextSize = 42
AccessTitle.Font = Enum.Font.GothamBlack
AccessTitle.Parent = AccessFrame

local SubTitle = Instance.new("TextLabel")
SubTitle.Name = "SubTitle"
SubTitle.Size = UDim2.new(1, 0, 0, 25)
SubTitle.Position = UDim2.new(0, 0, 0, 65)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "SOUTH BRONX PREMIUM"
SubTitle.TextColor3 = Color3.fromRGB(180, 180, 180)
SubTitle.TextSize = 14
SubTitle.Font = Enum.Font.GothamBold
SubTitle.Parent = AccessFrame

-- Code Input
local CodeFrame = Instance.new("Frame")
CodeFrame.Name = "CodeFrame"
CodeFrame.Size = UDim2.new(0, 350, 0, 50)
CodeFrame.Position = UDim2.new(0.5, -175, 0.5, -10)
CodeFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
CodeFrame.BorderSizePixel = 0
CodeFrame.Parent = AccessFrame

local CodeCorner = Instance.new("UICorner")
CodeCorner.CornerRadius = UDim.new(0, 10)
CodeCorner.Parent = CodeFrame

local CodeStroke = Instance.new("UIStroke")
CodeStroke.Color = Color3.fromRGB(147, 0, 211)
CodeStroke.Thickness = 2
CodeStroke.Parent = CodeFrame

local CodeInput = Instance.new("TextBox")
CodeInput.Name = "CodeInput"
CodeInput.Size = UDim2.new(1, -20, 1, 0)
CodeInput.Position = UDim2.new(0, 10, 0, 0)
CodeInput.BackgroundTransparency = 1
CodeInput.Text = ""
CodeInput.PlaceholderText = "ENTER ACCESS CODE..."
CodeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
CodeInput.TextSize = 16
CodeInput.Font = Enum.Font.GothamBold
CodeInput.TextXAlignment = Enum.TextXAlignment.Center
CodeInput.ClearTextOnFocus = false
CodeInput.Parent = CodeFrame

-- Verify Button
local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Name = "VerifyBtn"
VerifyBtn.Size = UDim2.new(0, 200, 0, 45)
VerifyBtn.Position = UDim2.new(0.5, -100, 0.8, -10)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(147, 0, 211)
VerifyBtn.BorderSizePixel = 0
VerifyBtn.Text = "VERIFY ACCESS"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.TextSize = 16
VerifyBtn.Font = Enum.Font.GothamBlack
VerifyBtn.Parent = AccessFrame

local VerifyCorner = Instance.new("UICorner")
VerifyCorner.CornerRadius = UDim.new(0, 10)
VerifyCorner.Parent = VerifyBtn

local VerifyGradient = Instance.new("UIGradient")
VerifyGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(147, 0, 211)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 0, 130))
})
VerifyGradient.Parent = VerifyBtn

-- Status Label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "Status"
StatusLabel.Size = UDim2.new(1, 0, 0, 25)
StatusLabel.Position = UDim2.new(0, 0, 1, -35)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
StatusLabel.TextSize = 12
StatusLabel.Font = Enum.Font.GothamBold
StatusLabel.Parent = AccessFrame

-- Verify Function
local function VerifyAccess()
    local input = CodeInput.Text:upper():gsub("%s+", "")
    if input == ACCESS_CODE:gsub("%s+", "") then
        VERIFIED = true
        StatusLabel.Text = "✓ ACCESS GRANTED"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        
        TweenService:Create(AccessFrame, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Rotation = 360
        }):Play()
        
        wait(0.6)
        AccessGui:Destroy()
        LoadMainScript()
    else
        StatusLabel.Text = "✗ INVALID ACCESS CODE"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
        CodeFrame.BackgroundColor3 = Color3.fromRGB(50, 20, 20)
        wait(0.2)
        CodeFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    end
end

VerifyBtn.MouseButton1Click:Connect(VerifyAccess)
CodeInput.FocusLost:Connect(function(enter)
    if enter then
        VerifyAccess()
    end
end)

-- Main Script Function
function LoadMainScript()
    -- Settings
    local Settings = {
        Aimbot = {
            Enabled = false,
            TeamCheck = true,
            Prediction = 0.165,
            Smoothness = 0.08,
            FOV = 150,
            ShowFOV = true,
            Part = "Head",
            WallCheck = false
        },
        Triggerbot = {
            Enabled = false,
            Delay = 0,
            Humanization = 0,
            TeamCheck = true,
            WallCheck = false
        },
        ESP = {
            Enabled = false,
            TeamCheck = true,
            Boxes = true,
            BoxFilled = false,
            Names = true,
            Distance = true,
            Health = true,
            HealthBar = true,
            Tracers = false,
            Skeleton = false,
            Color = Color3.fromRGB(147, 0, 211),
            TeamColor = true
        },
        AutoFarm = {
            Enabled = false,
            Type = "Money",
            Speed = 100,
            AutoShoot = false
        },
        Player = {
            WalkSpeed = 16,
            JumpPower = 50,
            InfiniteJump = false,
            Noclip = false,
            Fly = false,
            FlySpeed = 50
        },
        Gun = {
            NoRecoil = false,
            NoSpread = false,
            InstantReload = false,
            RapidFire = false,
            InfiniteAmmo = false,
            DamageMultiplier = 1
        },
        Misc = {
            AutoLoot = false,
            AutoSell = false,
            AntiAim = false,
            Spinbot = false
        }
    }

    -- Variables
    local ESPObjects = {}
    local AimbotTarget = nil
    local TriggerbotTarget = nil
    local Farming = false
    local NoclipConnection = nil
    local FlyConnection = nil
    local FlyBodyGyro = nil
    local FlyBodyVelocity = nil
    local LastShot = 0

    -- Drawing Functions
    local function CreateDrawing(type, properties)
        local drawing = Drawing.new(type)
        for prop, value in pairs(properties) do
            drawing[prop] = value
        end
        return drawing
    end

    -- Utility Functions
    local function GetCharacter(player)
        return player.Character
    end

    local function GetRoot(player)
        local char = GetCharacter(player)
        return char and char:FindFirstChild("HumanoidRootPart")
    end

    local function GetHumanoid(player)
        local char = GetCharacter(player)
        return char and char:FindFirstChild("Humanoid")
    end

    local function GetHead(player)
        local char = GetCharacter(player)
        return char and char:FindFirstChild("Head")
    end

    local function IsAlive(player)
        local humanoid = GetHumanoid(player)
        return humanoid and humanoid.Health > 0
    end

    local function GetTeam(player)
        return player.Team
    end

    local function IsTeammate(player)
        if not Settings.Aimbot.TeamCheck then return false end
        return GetTeam(player) == GetTeam(LocalPlayer)
    end

    local function GetDistance(pos1, pos2)
        return (pos1 - pos2).Magnitude
    end

    local function IsVisible(targetPart)
        if not Settings.Aimbot.WallCheck then return true end
        local origin = Camera.CFrame.Position
        local direction = (targetPart.Position - origin).Unit * (targetPart.Position - origin).Magnitude
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {LocalPlayer.Character, targetPart.Parent}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        local result = Workspace:Raycast(origin, direction, raycastParams)
        return result == nil
    end

    -- FOV Circle
    local FOV_Circle = CreateDrawing("Circle", {
        Visible = false,
        Thickness = 1.5,
        Color = Color3.fromRGB(147, 0, 211),
        NumSides = 64,
        Radius = Settings.Aimbot.FOV,
        Filled = false
    })

    local FOV_Circle_Filled = CreateDrawing("Circle", {
        Visible = false,
        Thickness = 1,
        Color = Color3.fromRGB(147, 0, 211),
        NumSides = 64,
        Radius = Settings.Aimbot.FOV,
        Filled = true,
        Transparency = 0.1
    })

    -- Crosshair
    local Crosshair_L = CreateDrawing("Line", {Visible = false, Thickness = 2, Color = Color3.fromRGB(147, 0, 211)})
    local Crosshair_R = CreateDrawing("Line", {Visible = false, Thickness = 2, Color = Color3.fromRGB(147, 0, 211)})
    local Crosshair_T = CreateDrawing("Line", {Visible = false, Thickness = 2, Color = Color3.fromRGB(147, 0, 211)})
    local Crosshair_B = CreateDrawing("Line", {Visible = false, Thickness = 2, Color = Color3.fromRGB(147, 0, 211)})
    local Crosshair_Dot = CreateDrawing("Circle", {Visible = false, Thickness = 1, Color = Color3.fromRGB(147, 0, 211), Filled = true, Radius = 2, NumSides = 8})

    local function UpdateCrosshair()
        local centerX = Camera.ViewportSize.X / 2
        local centerY = Camera.ViewportSize.Y / 2
        local size = 10
        
        Crosshair_L.Visible = true
        Crosshair_L.From = Vector2.new(centerX - size - 5, centerY)
        Crosshair_L.To = Vector2.new(centerX - 5, centerY)
        
        Crosshair_R.Visible = true
        Crosshair_R.From = Vector2.new(centerX + 5, centerY)
        Crosshair_R.To = Vector2.new(centerX + size + 5, centerY)
        
        Crosshair_T.Visible = true
        Crosshair_T.From = Vector2.new(centerX, centerY - size - 5)
        Crosshair_T.To = Vector2.new(centerX, centerY - 5)
        
        Crosshair_B.Visible = true
        Crosshair_B.From = Vector2.new(centerX, centerY + 5)
        Crosshair_B.To = Vector2.new(centerX, centerY + size + 5)
        
        Crosshair_Dot.Visible = true
        Crosshair_Dot.Position = Vector2.new(centerX, centerY)
    end

    -- ESP System
    local function CreateESP(player)
        if player == LocalPlayer then return end
        
        local esp = {
            Box = CreateDrawing("Square", {Visible = false, Color = Settings.ESP.Color, Thickness = 1.5, Filled = false}),
            BoxFilled = CreateDrawing("Square", {Visible = false, Color = Settings.ESP.Color, Thickness = 1, Filled = true, Transparency = 0.1}),
            Name = CreateDrawing("Text", {Visible = false, Color = Color3.new(1, 1, 1), Size = 13, Center = true, Outline = true, Font = 2}),
            Distance = CreateDrawing("Text", {Visible = false, Color = Color3.new(1, 1, 1), Size = 12, Center = true, Outline = true, Font = 2}),
            HealthBar = CreateDrawing("Square", {Visible = false, Color = Color3.fromRGB(0, 255, 0), Thickness = 1, Filled = true}),
            HealthBarOutline = CreateDrawing("Square", {Visible = false, Color = Color3.new(0, 0, 0), Thickness = 1, Filled = true}),
            Weapon = CreateDrawing("Text", {Visible = false, Color = Color3.fromRGB(255, 255, 0), Size = 11, Center = true, Outline = true, Font = 2}),
            Tracer = CreateDrawing("Line", {Visible = false, Color = Settings.ESP.Color, Thickness = 1.5}),
            Skeleton = {}
        }
        
        -- Skeleton ESP
        local skeletonParts = {"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", 
                               "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
                               "RightUpperLeg", "RightLowerLeg", "RightFoot"}
        
        for _, part in pairs(skeletonParts) do
            esp.Skeleton[part] = CreateDrawing("Line", {Visible = false, Color = Settings.ESP.Color, Thickness = 1})
        end
        
        ESPObjects[player] = esp
    end

    local SkeletonConnections = {
        {"Head", "UpperTorso"},
        {"UpperTorso", "LowerTorso"},
        {"UpperTorso", "LeftUpperArm"},
        {"LeftUpperArm", "LeftLowerArm"},
        {"LeftLowerArm", "LeftHand"},
        {"UpperTorso", "RightUpperArm"},
        {"RightUpperArm", "RightLowerArm"},
        {"RightLowerArm", "RightHand"},
        {"LowerTorso", "LeftUpperLeg"},
        {"LeftUpperLeg", "LeftLowerLeg"},
        {"LeftLowerLeg", "LeftFoot"},
        {"LowerTorso", "RightUpperLeg"},
        {"RightUpperLeg", "RightLowerLeg"},
        {"RightLowerLeg", "RightFoot"}
    }

    local function UpdateESP()
        for player, esp in pairs(ESPObjects) do
            if not Settings.ESP.Enabled or not player.Parent then
                for _, drawing in pairs(esp) do
                    if type(drawing) == "table" then
                        for _, line in pairs(drawing) do
                            line.Visible = false
                        end
                    else
                        drawing.Visible = false
                    end
                end
                continue
            end
            
            local character = GetCharacter(player)
            local root = GetRoot(player)
            local humanoid = GetHumanoid(player)
            local head = GetHead(player)
            
            if not character or not root or not humanoid or not head then
                for _, drawing in pairs(esp) do
                    if type(drawing) == "table" then
                        for _, line in pairs(drawing) do
                            line.Visible = false
                        end
                    else
                        drawing.Visible = false
                    end
                end
                continue
            end
            
            if not IsAlive(player) then
                for _, drawing in pairs(esp) do
                    if type(drawing) == "table" then
                        for _, line in pairs(drawing) do
                            line.Visible = false
                        end
                    else
                        drawing.Visible = false
                    end
                end
                continue
            end
            
            if Settings.ESP.TeamCheck and IsTeammate(player) then
                for _, drawing in pairs(esp) do
                    if type(drawing) == "table" then
                        for _, line in pairs(drawing) do
                            line.Visible = false
                        end
                    else
                        drawing.Visible = false
                    end
                end
                continue
            end
            
            local pos, onScreen = Camera:WorldToViewportPoint(root.Position)
            if not onScreen then
                for _, drawing in pairs(esp) do
                    if type(drawing) == "table" then
                        for _, line in pairs(drawing) do
                            line.Visible = false
                        end
                    else
                        drawing.Visible = false
                    end
                end
                continue
            end
            
            local distance = GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, root.Position)
            local scale = 1000 / distance
            local width = math.clamp(scale * 0.6, 30, 120)
            local height = math.clamp(scale * 1.8, 60, 220)
            
            local topLeft = Vector2.new(pos.X - width/2, pos.Y - height/2)
            local bottomRight = Vector2.new(pos.X + width/2, pos.Y + height/2)
            
            local color = Settings.ESP.TeamColor and (IsTeammate(player) and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)) or Settings.ESP.Color
            
            -- Box ESP
            if Settings.ESP.Boxes then
                esp.Box.Size = Vector2.new(width, height)
                esp.Box.Position = topLeft
                esp.Box.Color = color
                esp.Box.Visible = true
                
                if Settings.ESP.BoxFilled then
                    esp.BoxFilled.Size = Vector2.new(width, height)
                    esp.BoxFilled.Position = topLeft
                    esp.BoxFilled.Color = color
                    esp.BoxFilled.Visible = true
                else
                    esp.BoxFilled.Visible = false
                end
            else
                esp.Box.Visible = false
                esp.BoxFilled.Visible = false
            end
            
            -- Name ESP
            if Settings.ESP.Names then
                esp.Name.Position = Vector2.new(pos.X, topLeft.Y - 18)
                esp.Name.Text = player.Name
                esp.Name.Color = color
                esp.Name.Visible = true
            else
                esp.Name.Visible = false
            end
            
            -- Distance ESP
            if Settings.ESP.Distance then
                esp.Distance.Position = Vector2.new(pos.X, bottomRight.Y + 5)
                esp.Distance.Text = string.format("%.0fm", distance)
                esp.Distance.Visible = true
            else
                esp.Distance.Visible = false
            end
            
            -- Health Bar
            if Settings.ESP.Health then
                local healthPercent = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
                local barHeight = height * healthPercent
                
                esp.HealthBarOutline.Size = Vector2.new(5, height + 2)
                esp.HealthBarOutline.Position = Vector2.new(topLeft.X - 10, topLeft.Y - 1)
                esp.HealthBarOutline.Visible = true
                
                esp.HealthBar.Size = Vector2.new(3, barHeight)
                esp.HealthBar.Position = Vector2.new(topLeft.X - 9, topLeft.Y + height - barHeight)
                esp.HealthBar.Color = Color3.fromRGB(255 * (1 - healthPercent), 255 * healthPercent, 0)
                esp.HealthBar.Visible = true
            else
                esp.HealthBar.Visible = false
                esp.HealthBarOutline.Visible = false
            end
            
            -- Tracers
            if Settings.ESP.Tracers then
                esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                esp.Tracer.To = Vector2.new(pos.X, bottomRight.Y)
                esp.Tracer.Color = color
                esp.Tracer.Visible = true
            else
                esp.Tracer.Visible = false
            end
            
            -- Skeleton ESP
            if Settings.ESP.Skeleton then
                for _, connection in pairs(SkeletonConnections) do
                    local part1 = character:FindFirstChild(connection[1])
                    local part2 = character:FindFirstChild(connection[2])
                    
                    if part1 and part2 then
                        local pos1, vis1 = Camera:WorldToViewportPoint(part1.Position)
                        local pos2, vis2 = Camera:WorldToViewportPoint(part2.Position)
                        
                        if vis1 and vis2 then
                            local line = esp.Skeleton[connection[1]]
                            if line then
                                line.From = Vector2.new(pos1.X, pos1.Y)
                                line.To = Vector2.new(pos2.X, pos2.Y)
                                line.Color = color
                                line.Visible = true
                            end
                        end
                    end
                end
            else
                for _, line in pairs(esp.Skeleton) do
                    line.Visible = false
                end
            end
        end
    end

    -- Aimbot System
    local function GetClosestPlayerToMouse()
        local closest = nil
        local shortestDistance = Settings.Aimbot.FOV
        
        for _, player in pairs(Players:GetPlayers()) do
            if player == LocalPlayer then continue end
            if not IsAlive(player) then continue end
            if Settings.Aimbot.TeamCheck and IsTeammate(player) then continue end
            
            local part = GetCharacter(player) and GetCharacter(player):FindFirstChild(Settings.Aimbot.Part)
            if not part then continue end
            
            if Settings.Aimbot.WallCheck and not IsVisible(part) then continue end
            
            local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
            if not onScreen then continue end
            
            local distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closest = player
            end
        end
        
        return closest
    end

    local function GetPlayerUnderCrosshair()
        local centerX = Camera.ViewportSize.X / 2
        local centerY = Camera.ViewportSize.Y / 2
        local closestDist = 50 -- Pixel threshold
        
        local closest = nil
        
        for _, player in pairs(Players:GetPlayers()) do
            if player == LocalPlayer then continue end
            if not IsAlive(player) then continue end
            if Settings.Triggerbot.TeamCheck and IsTeammate(player) then continue end
            
            local part = GetCharacter(player) and GetCharacter(player):FindFirstChild("Head")
            if not part then continue end
            
            if Settings.Triggerbot.WallCheck and not IsVisible(part) then continue end
            
            local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
            if not onScreen then continue end
            
            local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(centerX, centerY)).Magnitude
            if dist < closestDist then
                closestDist = dist
                closest = player
            end
        end
        
        return closest
    end

    local function UpdateAimbot()
        -- Update FOV Circle
        if Settings.Aimbot.ShowFOV then
            FOV_Circle.Position = Vector2.new(Mouse.X, Mouse.Y)
            FOV_Circle.Radius = Settings.Aimbot.FOV
            FOV_Circle.Visible = true
            
            FOV_Circle_Filled.Position = Vector2.new(Mouse.X, Mouse.Y)
            FOV_Circle_Filled.Radius = Settings.Aimbot.FOV
            FOV_Circle_Filled.Visible = true
        else
            FOV_Circle.Visible = false
            FOV_Circle_Filled.Visible = false
        end
        
        -- Aimbot
        if Settings.Aimbot.Enabled and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            local target = GetClosestPlayerToMouse()
            if target then
                local part = GetCharacter(target):FindFirstChild(Settings.Aimbot.Part)
                if part then
                    local prediction = part.Position + (part.Velocity * Settings.Aimbot.Prediction)
                    local pos = Camera:WorldToViewportPoint(prediction)
                    local targetPos = Vector2.new(pos.X, pos.Y)
                    local mousePos = Vector2.new(Mouse.X, Mouse.Y)
                    local moveVec = (targetPos - mousePos) * Settings.Aimbot.Smoothness
                    
                    mousemoverel(moveVec.X, moveVec.Y)
                end
            end
        end
    end

    -- TRIGGERBOT SYSTEM (Auto Shoot saat crosshair ke musuh)
    local function UpdateTriggerbot()
        if not Settings.Triggerbot.Enabled then return end
        
        local target = GetPlayerUnderCrosshair()
        if target then
            local currentTime = tick()
            if currentTime - LastShot >= (Settings.Triggerbot.Delay / 1000) then
                -- Simulate mouse click
                mouse1press()
                wait(0.01)
                mouse1release()
                LastShot = currentTime
            end
        end
    end

    -- Auto Farm System
    local function AutoFarm()
        if not Farming or not Settings.AutoFarm.Enabled then return end
        
        local character = LocalPlayer.Character
        if not character then return end
        
        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        -- Find farmable objects
        local targets = {}
        
        if Settings.AutoFarm.Type == "Money" then
            for _, obj in pairs(Workspace:GetDescendants()) do
                if obj.Name:lower():match("money") or obj.Name:lower():match("cash") or obj.Name:lower():match("job") then
                    if obj:IsA("BasePart") or obj:IsA("Model") then
                        table.insert(targets, obj)
                    end
                end
            end
        elseif Settings.AutoFarm.Type == "Crates" then
            for _, obj in pairs(Workspace:GetDescendants()) do
                if obj.Name:lower():match("crate") or obj.Name:lower():match("box") or obj.Name:lower():match("loot") then
                    if obj:IsA("BasePart") or obj:IsA("Model") then
                        table.insert(targets, obj)
                    end
                end
            end
        elseif Settings.AutoFarm.Type == "Chips" then
            for _, obj in pairs(Workspace:GetDescendants()) do
                if obj.Name:lower():match("chip") then
                    if obj:IsA("BasePart") or obj:IsA("Model") then
                        table.insert(targets, obj)
                    end
                end
            end
        end
        
        -- Teleport to nearest target
        local nearest = nil
        local nearestDist = math.huge
        
        for _, target in pairs(targets) do
            local pos = target:IsA("Model") and target:GetPivot().Position or target.Position
            local dist = GetDistance(root.Position, pos)
            if dist < nearestDist then
                nearestDist = dist
                nearest = target
            end
        end
        
        if nearest then
            local targetPos = nearest:IsA("Model") and nearest:GetPivot().Position or nearest.Position
            root.CFrame = CFrame.new(targetPos + Vector3.new(0, 3, 0))
            
            -- Auto shoot if enabled
            if Settings.AutoFarm.AutoShoot then
                mouse1press()
                wait(0.05)
                mouse1release()
            end
            
            -- Interact
            for _, remote in pairs(ReplicatedStorage:GetDescendants()) do
                if remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction") then
                    if remote.Name:lower():match("interact") or remote.Name:lower():match("collect") or remote.Name:lower():match("pickup") then
                        pcall(function()
                            remote:FireServer(nearest)
                        end)
                    end
                end
            end
        end
    end

    -- Gun Mods
    local function ApplyGunMods()
        local character = LocalPlayer.Character
        if not character then return end
        
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                -- No Recoil
                if Settings.Gun.NoRecoil then
                    local recoil = tool:FindFirstChild("Recoil")
                    if recoil then
                        recoil.Value = 0
                    end
                end
                
                -- No Spread
                if Settings.Gun.NoSpread then
                    local spread = tool:FindFirstChild("Spread")
                    if spread then
                        spread.Value = 0
                    end
                end
                
                -- Rapid Fire
                if Settings.Gun.RapidFire then
                    local fireRate = tool:FindFirstChild("FireRate") or tool:FindFirstChild("Firerate")
                    if fireRate then
                        fireRate.Value = 0.05
                    end
                end
                
                -- Infinite Ammo
                if Settings.Gun.InfiniteAmmo then
                    local ammo = tool:FindFirstChild("Ammo") or tool:FindFirstChild("Clip")
                    if ammo then
                        ammo.Value = 999
                    end
                end
            end
        end
    end

    -- Player Mods
    local function UpdatePlayerMods()
        local character = LocalPlayer.Character
        if not character then return end
        
        local humanoid = character:FindFirstChild("Humanoid")
        if not humanoid then return end
        
        humanoid.WalkSpeed = Settings.Player.WalkSpeed
        humanoid.JumpPower = Settings.Player.JumpPower
        
        -- Noclip
        if Settings.Player.Noclip then
            if not NoclipConnection then
                NoclipConnection = RunService.Stepped:Connect(function()
                    for _, part in pairs(character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end)
            end
        else
            if NoclipConnection then
                NoclipConnection:Disconnect()
                NoclipConnection = nil
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end

    -- Fly System
    local function ToggleFly(enabled)
        local character = LocalPlayer.Character
        if not character then return end
        
        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        if enabled then
            FlyBodyGyro = Instance.new("BodyGyro")
            FlyBodyGyro.P = 9e4
            FlyBodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            FlyBodyGyro.CFrame = root.CFrame
            FlyBodyGyro.Parent = root
            
            FlyBodyVelocity = Instance.new("BodyVelocity")
            FlyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
            FlyBodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            FlyBodyVelocity.Parent = root
            
            FlyConnection = RunService.RenderStepped:Connect(function()
                if not FlyBodyGyro or not FlyBodyVelocity then return end
                
                local moveDir = Vector3.new(0, 0, 0)
                
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    moveDir = moveDir + Camera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    moveDir = moveDir - Camera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    moveDir = moveDir - Camera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    moveDir = moveDir + Camera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    moveDir = moveDir + Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                    moveDir = moveDir - Vector3.new(0, 1, 0)
                end
                
                FlyBodyGyro.CFrame = Camera.CFrame
                FlyBodyVelocity.Velocity = moveDir * Settings.Player.FlySpeed
            end)
        else
            if FlyConnection then
                FlyConnection:Disconnect()
                FlyConnection = nil
            end
            if FlyBodyGyro then
                FlyBodyGyro:Destroy()
                FlyBodyGyro = nil
            end
            if FlyBodyVelocity then
                FlyBodyVelocity:Destroy()
                FlyBodyVelocity = nil
            end
        end
    end

    -- Infinite Jump
    UserInputService.JumpRequest:Connect(function()
        if Settings.Player.InfiniteJump then
            local character = LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end
    end)

    -- GUI Creation
    local MainGui = Instance.new("ScreenGui")
    MainGui.Name = "HasbiwMain"
    MainGui.Parent = game.CoreGui
    MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MainGui.ResetOnSpawn = false

    -- Main Frame
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "Main"
    MainFrame.Size = UDim2.new(0, 650, 0, 450)
    MainFrame.Position = UDim2.new(0.5, -325, 0.5, -225)
    MainFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = MainGui
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Visible = false

    -- Main Gradient
    local MainGradient = Instance.new("UIGradient")
    MainGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 15)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 0, 40)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 15))
    })
    MainGradient.Rotation = 90
    MainGradient.Parent = MainFrame

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 20)
    MainCorner.Parent = MainFrame

    -- Glow Effect
    local MainGlow = Instance.new("ImageLabel")
    MainGlow.Size = UDim2.new(1, 80, 1, 80)
    MainGlow.Position = UDim2.new(0, -40, 0, -40)
    MainGlow.BackgroundTransparency = 1
    MainGlow.Image = "rbxassetid://4996891970"
    MainGlow.ImageColor3 = Color3.fromRGB(147, 0, 211)
    MainGlow.ImageTransparency = 0.7
    MainGlow.Parent = MainFrame

    -- Title Bar
    local TitleBar = Instance.new("Frame")
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 60)
    TitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame

    local TitleBarCorner = Instance.new("UICorner")
    TitleBarCorner.CornerRadius = UDim.new(0, 20)
    TitleBarCorner.Parent = TitleBar

    local TitleFix = Instance.new("Frame")
    TitleFix.Size = UDim2.new(1, 0, 0, 20)
    TitleFix.Position = UDim2.new(0, 0, 1, -20)
    TitleFix.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    TitleFix.BorderSizePixel = 0
    TitleFix.Parent = TitleBar

    -- Logo/Icon
    local Logo = Instance.new("TextLabel")
    Logo.Size = UDim2.new(0, 50, 0, 50)
    Logo.Position = UDim2.new(0, 15, 0, 5)
    Logo.BackgroundTransparency = 1
    Logo.Text = "⚡"
    Logo.TextColor3 = Color3.fromRGB(147, 0, 211)
    Logo.TextSize = 35
    Logo.Font = Enum.Font.GothamBlack
    Logo.Parent = TitleBar

    -- Title
    local TitleText = Instance.new("TextLabel")
    TitleText.Size = UDim2.new(0, 200, 0, 30)
    TitleText.Position = UDim2.new(0, 70, 0, 5)
    TitleText.BackgroundTransparency = 1
    TitleText.Text = "HASBIW.EXE"
    TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleText.TextSize = 24
    TitleText.Font = Enum.Font.GothamBlack
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.Parent = TitleBar

    local SubTitleText = Instance.new("TextLabel")
    SubTitleText.Size = UDim2.new(0, 200, 0, 20)
    SubTitleText.Position = UDim2.new(0, 70, 0, 32)
    SubTitleText.BackgroundTransparency = 1
    SubTitleText.Text = "SOUTH BRONX PREMIUM"
    SubTitleText.TextColor3 = Color3.fromRGB(147, 0, 211)
    SubTitleText.TextSize = 12
    SubTitleText.Font = Enum.Font.GothamBold
    SubTitleText.TextXAlignment = Enum.TextXAlignment.Left
    SubTitleText.Parent = TitleBar

    -- Close Button
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 35, 0, 35)
    CloseBtn.Position = UDim2.new(1, -45, 0, 12)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    CloseBtn.BorderSizePixel = 0
    CloseBtn.Text = "✕"
    CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.TextSize = 18
    CloseBtn.Font = Enum.Font.GothamBlack
    CloseBtn.Parent = TitleBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 10)
    CloseCorner.Parent = CloseBtn

    -- Minimize Button
    local MinBtn = Instance.new("TextButton")
    MinBtn.Size = UDim2.new(0, 35, 0, 35)
    MinBtn.Position = UDim2.new(1, -85, 0, 12)
    MinBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    MinBtn.BorderSizePixel = 0
    MinBtn.Text = "−"
    MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinBtn.TextSize = 20
    MinBtn.Font = Enum.Font.GothamBlack
    MinBtn.Parent = TitleBar

    local MinCorner = Instance.new("UICorner")
    MinCorner.CornerRadius = UDim.new(0, 10)
    MinCorner.Parent = MinBtn

    -- Tab System
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(0, 140, 1, -70)
    TabContainer.Position = UDim2.new(0, 10, 0, 65)
    TabContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    TabContainer.BorderSizePixel = 0
    TabContainer.Parent = MainFrame

    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 15)
    TabCorner.Parent = TabContainer

    local ContentContainer = Instance.new("Frame")
    ContentContainer.Size = UDim2.new(1, -160, 1, -80)
    ContentContainer.Position = UDim2.new(0, 155, 0, 65)
    ContentContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    ContentContainer.BorderSizePixel = 0
    ContentContainer.Parent = MainFrame

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 15)
    ContentCorner.Parent = ContentContainer

    -- Tabs
    local Tabs = {}
    local CurrentTab = nil

    local function CreateTab(name, icon)
        local TabBtn = Instance.new("TextButton")
        TabBtn.Size = UDim2.new(1, -10, 0, 45)
        TabBtn.Position = UDim2.new(0, 5, 0, #Tabs * 50 + 10)
        TabBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        TabBtn.BorderSizePixel = 0
        TabBtn.Text = "  " .. icon .. "  " .. name
        TabBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
        TabBtn.TextSize = 13
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextXAlignment = Enum.TextXAlignment.Left
        TabBtn.Parent = TabContainer

        local TabBtnCorner = Instance.new("UICorner")
        TabBtnCorner.CornerRadius = UDim.new(0, 10)
        TabBtnCorner.Parent = TabBtn

        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Size = UDim2.new(1, -10, 1, -10)
        TabContent.Position = UDim2.new(0, 5, 0, 5)
        TabContent.BackgroundTransparency = 1
        TabContent.BorderSizePixel = 0
        TabContent.ScrollBarThickness = 3
        TabContent.ScrollBarImageColor3 = Color3.fromRGB(147, 0, 211)
        TabContent.Visible = false
        TabContent.Parent = ContentContainer

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Padding = UDim.new(0, 10)
        UIListLayout.Parent = TabContent

        table.insert(Tabs, {Btn = TabBtn, Content = TabContent, Name = name})
        
        TabBtn.MouseButton1Click:Connect(function()
            for _, tab in pairs(Tabs) do
                tab.Content.Visible = false
                tab.Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                tab.Btn.TextColor3 = Color3.fromRGB(180, 180, 180)
            end
            TabContent.Visible = true
            TabBtn.BackgroundColor3 = Color3.fromRGB(147, 0, 211)
            TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            CurrentTab = name
        end)
        
        return TabContent
    end

    -- Create Tabs
    local AimbotTab = CreateTab("AIMBOT", "🎯")
    local TriggerTab = CreateTab("TRIGGERBOT", "🔫")
    local ESPTab = CreateTab("ESP", "👁️")
    local FarmTab = CreateTab("AUTOFARM", "💰")
    local PlayerTab = CreateTab("PLAYER", "🏃")
    local GunTab = CreateTab("GUN MODS", "🔧")
    local MiscTab = CreateTab("MISC", "⚙️")

    -- UI Helper Functions
    local function CreateToggle(parent, text, setting, callback)
        local ToggleFrame = Instance.new("Frame")
        ToggleFrame.Size = UDim2.new(1, -10, 0, 40)
        ToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
        ToggleFrame.BorderSizePixel = 0
        ToggleFrame.Parent = parent

        local ToggleCorner = Instance.new("UICorner")
        ToggleCorner.CornerRadius = UDim.new(0, 10)
        ToggleCorner.Parent = ToggleFrame

        local ToggleLabel = Instance.new("TextLabel")
        ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
        ToggleLabel.Position = UDim2.new(0, 15, 0, 0)
        ToggleLabel.BackgroundTransparency = 1
        ToggleLabel.Text = text
        ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleLabel.TextSize = 13
        ToggleLabel.Font = Enum.Font.GothamBold
        ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
        ToggleLabel.Parent = ToggleFrame

        local ToggleBtn = Instance.new("TextButton")
        ToggleBtn.Size = UDim2.new(0, 50, 0, 25)
        ToggleBtn.Position = UDim2.new(1, -60, 0.5, -12)
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        ToggleBtn.BorderSizePixel = 0
        ToggleBtn.Text = "OFF"
        ToggleBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
        ToggleBtn.TextSize = 11
        ToggleBtn.Font = Enum.Font.GothamBlack
        ToggleBtn.Parent = ToggleFrame

        local ToggleBtnCorner = Instance.new("UICorner")
        ToggleBtnCorner.CornerRadius = UDim.new(0, 6)
        ToggleBtnCorner.Parent = ToggleBtn

        local enabled = false
        
        ToggleBtn.MouseButton1Click:Connect(function()
            enabled = not enabled
            ToggleBtn.Text = enabled and "ON" or "OFF"
            ToggleBtn.BackgroundColor3 = enabled and Color3.fromRGB(147, 0, 211) or Color3.fromRGB(50, 50, 60)
            ToggleBtn.TextColor3 = enabled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(150, 150, 150)
            if callback then callback(enabled) end
        end)
        
        return ToggleFrame
    end

    local function CreateSlider(parent, text, min, max, default, callback)
        local SliderFrame = Instance.new("Frame")
        SliderFrame.Size = UDim2.new(1, -10, 0, 60)
        SliderFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Parent = parent

        local SliderCorner = Instance.new("UICorner")
        SliderCorner.CornerRadius = UDim.new(0, 10)
        SliderCorner.Parent = SliderFrame

        local SliderLabel = Instance.new("TextLabel")
        SliderLabel.Size = UDim2.new(0.5, 0, 0, 25)
        SliderLabel.Position = UDim2.new(0, 15, 0, 5)
        SliderLabel.BackgroundTransparency = 1
        SliderLabel.Text = text
        SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderLabel.TextSize = 12
        SliderLabel.Font = Enum.Font.GothamBold
        SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
        SliderLabel.Parent = SliderFrame

        local ValueLabel = Instance.new("TextLabel")
        ValueLabel.Size = UDim2.new(0.3, 0, 0, 25)
        ValueLabel.Position = UDim2.new(0.7, -10, 0, 5)
        ValueLabel.BackgroundTransparency = 1
        ValueLabel.Text = tostring(default)
        ValueLabel.TextColor3 = Color3.fromRGB(147, 0, 211)
        ValueLabel.TextSize = 12
        ValueLabel.Font = Enum.Font.GothamBlack
        ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
        ValueLabel.Parent = SliderFrame

        local SliderBg = Instance.new("Frame")
        SliderBg.Size = UDim2.new(1, -30, 0, 8)
        SliderBg.Position = UDim2.new(0, 15, 0, 38)
        SliderBg.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        SliderBg.BorderSizePixel = 0
        SliderBg.Parent = SliderFrame

        local SliderBgCorner = Instance.new("UICorner")
        SliderBgCorner.CornerRadius = UDim.new(0, 4)
        SliderBgCorner.Parent = SliderBg

        local SliderFill = Instance.new("Frame")
        SliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
        SliderFill.BackgroundColor3 = Color3.fromRGB(147, 0, 211)
        SliderFill.BorderSizePixel = 0
        SliderFill.Parent = SliderBg

        local SliderFillCorner = Instance.new("UICorner")
        SliderFillCorner.CornerRadius = UDim.new(0, 4)
        SliderFillCorner.Parent = SliderFill

        local dragging = false
        
        SliderBg.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
            end
        end)
        
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local pos = math.clamp((input.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X, 0, 1)
                local value = math.floor(min + (max - min) * pos)
                SliderFill.Size = UDim2.new(pos, 0, 1, 0)
                ValueLabel.Text = tostring(value)
                if callback then callback(value) end
            end
        end)
        
        return SliderFrame
    end

    local function CreateDropdown(parent, text, options, callback)
        local DropdownFrame = Instance.new("Frame")
        DropdownFrame.Size = UDim2.new(1, -10, 0, 45)
        DropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
        DropdownFrame.BorderSizePixel = 0
        DropdownFrame.Parent = parent

        local DropdownCorner = Instance.new("UICorner")
        DropdownCorner.CornerRadius = UDim.new(0, 10)
        DropdownCorner.Parent = DropdownFrame

        local DropdownLabel = Instance.new("TextLabel")
        DropdownLabel.Size = UDim2.new(0.5, 0, 1, 0)
        DropdownLabel.Position = UDim2.new(0, 15, 0, 0)
        DropdownLabel.BackgroundTransparency = 1
        DropdownLabel.Text = text
        DropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownLabel.TextSize = 12
        DropdownLabel.Font = Enum.Font.GothamBold
        DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
        DropdownLabel.Parent = DropdownFrame

        local DropdownBtn = Instance.new("TextButton")
        DropdownBtn.Size = UDim2.new(0, 120, 0, 30)
        DropdownBtn.Position = UDim2.new(1, -130, 0.5, -15)
        DropdownBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        DropdownBtn.BorderSizePixel = 0
        DropdownBtn.Text = options[1] or "Select"
        DropdownBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownBtn.TextSize = 11
        DropdownBtn.Font = Enum.Font.GothamBold
        DropdownBtn.Parent = DropdownFrame

        local DropdownBtnCorner = Instance.new("UICorner")
        DropdownBtnCorner.CornerRadius = UDim.new(0, 6)
        DropdownBtnCorner.Parent = DropdownBtn

        local DropdownList = Instance.new("Frame")
        DropdownList.Size = UDim2.new(0, 120, 0, #options * 30)
        DropdownList.Position = UDim2.new(1, -130, 0, 50)
        DropdownList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        DropdownList.BorderSizePixel = 0
        DropdownList.Visible = false
        DropdownList.ZIndex = 10
        DropdownList.Parent = DropdownFrame

        local DropdownListCorner = Instance.new("UICorner")
        DropdownListCorner.CornerRadius = UDim.new(0, 6)
        DropdownListCorner.Parent = DropdownList

        for i, option in pairs(options) do
            local OptionBtn = Instance.new("TextButton")
            OptionBtn.Size = UDim2.new(1, 0, 0, 30)
            OptionBtn.Position = UDim2.new(0, 0, 0, (i - 1) * 30)
            OptionBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            OptionBtn.BorderSizePixel = 0
            OptionBtn.Text = option
            OptionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionBtn.TextSize = 11
            OptionBtn.Font = Enum.Font.GothamBold
            OptionBtn.ZIndex = 11
            OptionBtn.Parent = DropdownList

            OptionBtn.MouseEnter:Connect(function()
                OptionBtn.BackgroundColor3 = Color3.fromRGB(147, 0, 211)
            end)
            
            OptionBtn.MouseLeave:Connect(function()
                OptionBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            end)
            
            OptionBtn.MouseButton1Click:Connect(function()
                DropdownBtn.Text = option
                DropdownList.Visible = false
                if callback then callback(option) end
            end)
        end

        DropdownBtn.MouseButton1Click:Connect(function()
            DropdownList.Visible = not DropdownList.Visible
        end)
        
        return DropdownFrame
    end

    -- AIMBOT TAB
    CreateToggle(AimbotTab, "Enable Aimbot", Settings.Aimbot.Enabled, function(val)
        Settings.Aimbot.Enabled = val
    end)
    
    CreateToggle(AimbotTab, "Team Check", Settings.Aimbot.TeamCheck, function(val)
        Settings.Aimbot.TeamCheck = val
    end)
    
    CreateToggle(AimbotTab, "Wall Check", Settings.Aimbot.WallCheck, function(val)
        Settings.Aimbot.WallCheck = val
    end)
    
    CreateToggle(AimbotTab, "Show FOV Circle", Settings.Aimbot.ShowFOV, function(val)
        Settings.Aimbot.ShowFOV = val
    end)
    
    CreateSlider(AimbotTab, "FOV Size", 50, 500, Settings.Aimbot.FOV, function(val)
        Settings.Aimbot.FOV = val
    end)
    
    CreateSlider(AimbotTab, "Smoothness", 1, 100, math.floor(Settings.Aimbot.Smoothness * 100), function(val)
        Settings.Aimbot.Smoothness = val / 100
    end)
    
    CreateSlider(AimbotTab, "Prediction", 0, 50, math.floor(Settings.Aimbot.Prediction * 1000), function(val)
        Settings.Aimbot.Prediction = val / 1000
    end)
    
    CreateDropdown(AimbotTab, "Aim Part", {"Head", "Torso", "HumanoidRootPart"}, function(val)
        Settings.Aimbot.Part = val
    end)

    -- TRIGGERBOT TAB
    CreateToggle(TriggerTab, "Enable Triggerbot", Settings.Triggerbot.Enabled, function(val)
        Settings.Triggerbot.Enabled = val
    end)
    
    CreateToggle(TriggerTab, "Team Check", Settings.Triggerbot.TeamCheck, function(val)
        Settings.Triggerbot.TeamCheck = val
    end)
    
    CreateToggle(TriggerTab, "Wall Check", Settings.Triggerbot.WallCheck, function(val)
        Settings.Triggerbot.WallCheck = val
    end)
    
    CreateSlider(TriggerTab, "Shoot Delay (ms)", 0, 500, Settings.Triggerbot.Delay, function(val)
        Settings.Triggerbot.Delay = val
    end)
    
    CreateSlider(TriggerTab, "Humanization", 0, 100, Settings.Triggerbot.Humanization, function(val)
        Settings.Triggerbot.Humanization = val
    end)

    -- ESP TAB
    CreateToggle(ESPTab, "Enable ESP", Settings.ESP.Enabled, function(val)
        Settings.ESP.Enabled = val
    end)
    
    CreateToggle(ESPTab, "Team Check", Settings.ESP.TeamCheck, function(val)
        Settings.ESP.TeamCheck = val
    end)
    
    CreateToggle(ESPTab, "Boxes", Settings.ESP.Boxes, function(val)
        Settings.ESP.Boxes = val
    end)
    
    CreateToggle(ESPTab, "Filled Boxes", Settings.ESP.BoxFilled, function(val)
        Settings.ESP.BoxFilled = val
    end)
    
    CreateToggle(ESPTab, "Names", Settings.ESP.Names, function(val)
        Settings.ESP.Names = val
    end)
    
    CreateToggle(ESPTab, "Distance", Settings.ESP.Distance, function(val)
        Settings.ESP.Distance = val
    end)
    
    CreateToggle(ESPTab, "Health Bar", Settings.ESP.Health, function(val)
        Settings.ESP.Health = val
    end)
    
    CreateToggle(ESPTab, "Tracers", Settings.ESP.Tracers, function(val)
        Settings.ESP.Tracers = val
    end)
    
    CreateToggle(ESPTab, "Skeleton", Settings.ESP.Skeleton, function(val)
        Settings.ESP.Skeleton = val
    end)
    
    CreateToggle(ESPTab, "Team Colors", Settings.ESP.TeamColor, function(val)
        Settings.ESP.TeamColor = val
    end)

    -- AUTOFARM TAB
    CreateToggle(FarmTab, "Enable Auto Farm", Settings.AutoFarm.Enabled, function(val)
        Settings.AutoFarm.Enabled = val
        Farming = val
    end)
    
    CreateToggle(FarmTab, "Auto Shoot", Settings.AutoFarm.AutoShoot, function(val)
        Settings.AutoFarm.AutoShoot = val
    end)
    
    CreateDropdown(FarmTab, "Farm Type", {"Money", "Crates", "Chips", "Cards"}, function(val)
        Settings.AutoFarm.Type = val
    end)
    
    CreateSlider(FarmTab, "Farm Speed", 10, 200, Settings.AutoFarm.Speed, function(val)
        Settings.AutoFarm.Speed = val
    end)

    -- PLAYER TAB
    CreateSlider(PlayerTab, "Walk Speed", 16, 200, Settings.Player.WalkSpeed, function(val)
        Settings.Player.WalkSpeed = val
    end)
    
    CreateSlider(PlayerTab, "Jump Power", 50, 200, Settings.Player.JumpPower, function(val)
        Settings.Player.JumpPower = val
    end)
    
    CreateSlider(PlayerTab, "Fly Speed", 10, 200, Settings.Player.FlySpeed, function(val)
        Settings.Player.FlySpeed = val
    end)
    
    CreateToggle(PlayerTab, "Infinite Jump", Settings.Player.InfiniteJump, function(val)
        Settings.Player.InfiniteJump = val
    end)
    
    CreateToggle(PlayerTab, "Noclip", Settings.Player.Noclip, function(val)
        Settings.Player.Noclip = val
    end)
    
    CreateToggle(PlayerTab, "Fly", Settings.Player.Fly, function(val)
        Settings.Player.Fly = val
        ToggleFly(val)
    end)

    -- GUN MODS TAB
    CreateToggle(GunTab, "No Recoil", Settings.Gun.NoRecoil, function(val)
        Settings.Gun.NoRecoil = val
    end)
    
    CreateToggle(GunTab, "No Spread", Settings.Gun.NoSpread, function(val)
        Settings.Gun.NoSpread = val
    end)
    
    CreateToggle(GunTab, "Instant Reload", Settings.Gun.InstantReload, function(val)
        Settings.Gun.InstantReload = val
    end)
    
    CreateToggle(GunTab, "Rapid Fire", Settings.Gun.RapidFire, function(val)
        Settings.Gun.RapidFire = val
    end)
    
    CreateToggle(GunTab, "Infinite Ammo", Settings.Gun.InfiniteAmmo, function(val)
        Settings.Gun.InfiniteAmmo = val
    end)

    -- MISC TAB
    CreateToggle(MiscTab, "Auto Loot", Settings.Misc.AutoLoot, function(val)
        Settings.Misc.AutoLoot = val
    end)
    
    CreateToggle(MiscTab, "Auto Sell", Settings.Misc.AutoSell, function(val)
        Settings.Misc.AutoSell = val
    end)
    
    CreateToggle(MiscTab, "Anti Aim", Settings.Misc.AntiAim, function(val)
        Settings.Misc.AntiAim = val
    end)
    
    CreateToggle(MiscTab, "Spinbot", Settings.Misc.Spinbot, function(val)
        Settings.Misc.Spinbot = val
    end)

    -- Select First Tab
    Tabs[1].Btn.BackgroundColor3 = Color3.fromRGB(147, 0, 211)
    Tabs[1].Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tabs[1].Content.Visible = true
    CurrentTab = Tabs[1].Name

    -- Toggle GUI
    local GuiVisible = true
    CloseBtn.MouseButton1Click:Connect(function()
        MainGui:Destroy()
        AccessGui:Destroy()
    end)

    MinBtn.MouseButton1Click:Connect(function()
        GuiVisible = not GuiVisible
        ContentContainer.Visible = GuiVisible
        TabContainer.Visible = GuiVisible
    end)

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.Insert then
            MainFrame.Visible = not MainFrame.Visible
        end
    end)

    -- Initialize ESP for existing players
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            CreateESP(player)
        end
    end

    Players.PlayerAdded:Connect(function(player)
        CreateESP(player)
    end)

    Players.PlayerRemoving:Connect(function(player)
        if ESPObjects[player] then
            for _, drawing in pairs(ESPObjects[player]) do
                if type(drawing) == "table" then
                    for _, line in pairs(drawing) do
                        line:Remove()
                    end
                else
                    drawing:Remove()
                end
            end
            ESPObjects[player] = nil
        end
    end)

    -- Main Loop
    RunService.RenderStepped:Connect(function()
        UpdateCrosshair()
        UpdateESP()
        UpdateAimbot()
        UpdateTriggerbot() -- TRIGGERBOT UPDATE
        UpdatePlayerMods()
        ApplyGunMods()
        AutoFarm()
    end)

    -- Notification
    StarterGui:SetCore("SendNotification", {
        Title = "HASBIW.EXE",
        Text = "Script Loaded Successfully!\nPress INSERT to toggle GUI\nBy: hasbiw.exe",
        Duration = 5
    })

    print([[
        ╔═══════════════════════════════════════════════════════════════╗
        ║                                                               ║
        ║   ██╗  ██╗ █████╗ ███████╗██████╗ ██╗    ██╗    ███████╗██╗  ██╗███████╗██████╗ ███████╗
        ║   ██║  ██║██╔══██╗██╔════╝██╔══██╗██║    ██║    ██╔════╝╚██╗██╔╝██╔════╝██╔══██╗██╔════╝
        ║   ███████║███████║███████╗██████╔╝██║ █╗ ██║    █████╗   ╚███╔╝ █████╗  ██████╔╝█████╗  
        ║   ██╔══██║██╔══██║╚════██║██╔═══╝ ██║███╗██║    ██╔══╝   ██╔██╗ ██╔══╝  ██╔══██╗██╔══╝  
        ║   ██║  ██║██║  ██║███████║██║     ╚███╔███╔╝    ███████╗██╔╝ ██╗███████╗██║  ██║███████╗
        ║   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝      ╚══╝╚══╝     ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝
        ║                                                               ║
        ║                    SOUTH BRONX: THE TRENCHES                 ║
        ║                      PREMIUM EDITION v2.0                    ║
        ║                         BY HASBIW.EXE                         ║
        ║                                                               ║
        ╚═══════════════════════════════════════════════════════════════╝
        
        STATUS: LOADED SUCCESSFULLY
        ACCESS: GRANTED
        FEATURES: AIMBOT | TRIGGERBOT | ESP | AUTOFARM | GUN MODS | PLAYER MODS
        
        TRIGGERBOT: Auto shoot when crosshair is on enemy!
    ]])
end

-- Start
print("HASBIW.EXE - Waiting for verification...")