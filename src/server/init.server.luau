local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local function crearAnim()
    local tween = Instance.new("Tween")
    tween.Parent = Workspace:WaitForChild("RandomPart")

    local ti = tween.TweenInfo
    ti.EasingStyle = Enum.EasingStyle.Elastic 
    tween.Changed:Connect(function(part)
        part.Size = Vector3.new(2, 10, 2)
        ti.DelayTime(2)
    end)
end

local function crearPartes(shape)
    local part = Instance.new("Part")
    part.Parent = Workspace
    part.Name = "RandomPart"
    part.Size = Vector3.new(2,2,2)
    part.Shape = shape 
    part.Position = Vector3.new(math.random(-100, 100), 100, Vector3.new(math.random(-100, 100)))
    part.BrickColor = BrickColor.random()
    part.Material = Enum.Material.Neon
    part.Anchored = false

    local aura = Instance.new("ParticleEmitter")
    aura.Parent = part
    aura.Acceleration = Vector3.new(10, 100, 10)
    aura.Texture = "rbxassetid://10052205711"
    aura.Enabled = true
    print("Partes creadas :D")
end

RunService.Heartbeat:Connect(function(deltaTime)
    deltaTime = 300
   crearPartes(Enum.PartType.Ball) 
   crearAnim()
end)
