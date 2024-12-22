-- Gui to Lua
-- Version: 3.2

-- Instances:
local LPLR = game:GetService('Players').LocalPlayer
local CMDS = {}
local TeefusAdmin = Instance.new("ScreenGui")
local Cmdbar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Bar = Instance.new("TextBox")
local Frame = Instance.new("Frame")
local Scroll = Instance.new("ScrollingFrame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")

--Properties:

TeefusAdmin.Name = "Teefus Admin"
TeefusAdmin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TeefusAdmin.ResetOnSpawn = false

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = TeefusAdmin
Cmdbar.Active = true
Cmdbar.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(0, 0, 0.921688497, 0)
Cmdbar.Size = UDim2.new(0, 1536, 0, 31)

TextLabel.Parent = Cmdbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000827812997, 0, 0.193548381, 0)
TextLabel.Size = UDim2.new(0.0357045159, 0, 0.612903237, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ">"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true

TextLabel_2.Parent = Cmdbar
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.000463008881, 0, 1, 0)
TextLabel_2.Size = UDim2.new(0.222353041, 0, 0.45161289, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Teefus Administration Bar [Teefus#0001]"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Bar.Name = "Bar"
Bar.Parent = Cmdbar
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 1.000
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.0355677158, 0, 0, 0)
Bar.Size = UDim2.new(0.922024608, 0, 1, 0)
Bar.ClearTextOnFocus = false
Bar.Font = Enum.Font.SourceSansLight
Bar.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Bar.Text = "Teefus Admin"
Bar.TextColor3 = Color3.fromRGB(255, 255, 255)
Bar.TextSize = 16.000
Bar.TextXAlignment = Enum.TextXAlignment.Left

Frame.Parent = Cmdbar
Frame.BackgroundColor3 = Color3.fromRGB(255, 62, 136)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.870967746, 0)
Frame.Size = UDim2.new(0, 1536, 0, 4)

Scroll.Name = "Scroll"
Scroll.Parent = TeefusAdmin
Scroll.Active = true
Scroll.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Scroll.BackgroundTransparency = 1.000
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.0776397511, 0, 0.714925945, 0)
Scroll.Rotation = 180.000
Scroll.Selectable = false
Scroll.Size = UDim2.new(0.873434782, 0, 0.195999995, 0)
Scroll.Visible = false
Scroll.ScrollBarThickness = 0
function AddCmd(name,desc,func)
local TextLab = Instance.new('TextLabel',Scroll)
TextLab.Parent = Scroll
TextLab.BackgroundColor3 = Color3.new(0.266667, 0.266667, 0.266667)
TextLab.BackgroundTransparency = 0.10000000149012
TextLab.BorderSizePixel = 0
TextLab.Rotation = 180
TextLab.Size = UDim2.new(1, 0, 0, 35)
TextLab.Font = Enum.Font.SourceSansLight
TextLab.Text = name.." | "..desc
TextLab.TextColor3 = Color3.new(1, 1, 1)
TextLab.TextSize = 16
CMDS[name]=func
end
function Service(thing)
return game:GetService(thing)
end
AddCmd('blockhats','Turns your hats into blocks!',function()
for i,v in pairs(LPLR.Character:GetChildren()) do
if v:IsA('Accessory') or v:IsA('Hat') then
for _,x in pairs(v.Handle:GetChildren()) do
if x:IsA('FileMesh') or x:IsA('SpecialMesh') then
x:Destroy()
end
end
end
end
end)
AddCmd('doublejump','Makes you jump twice! (BUGGY)',function()
LPLR:GetMouse().KeyDown:Connect(function(key)
if key == ' ' then
wait(.1)
LPLR.Character.Humanoid.Sit = true
wait()
LPLR.Character.Humanoid.Jump = true
wait()
LPLR.Character.Humanoid.Sit = true
wait()
LPLR.Character.Humanoid.Jump = true
end
end)
end)
AddCmd('invisible','Makes you invisible! (BUGGY)',function()
LPLR.Character.HumanoidRootPart.Anchored = true
end)
AddCmd('visible','Makes you visible! (BUGGY)',function()
LPLR.Character.HumanoidRootPart.Anchored = false
end)
AddCmd('seizure','Makes you have a seizure!',function()
SEIZURE = true
end)
AddCmd('stopseizure','Stops the seizure!',function()
SEIZURE = false
end)

-- Bar handling
LPLR:GetMouse().KeyDown:Connect(function(k)
if k == '-' then
Cmdbar.Visible = true
Scroll.Visible = true
Bar:CaptureFocus()
wait()
Bar.Text = ""
end
end)
Bar.FocusLost:Connect(function(enter)
if enter == true then
Cmdbar.Visible = false
Scroll.Visible = false
if CMDS[Bar.Text] then
CMDS[Bar.Text]()
end
Bar.Text = ""
end
end)

-- Text stuff
Match = function(name,str) return name:lower():find(str:lower()) and true end
function CIndex(Text)
local Index,SizeY = 0,0
for i,x in pairs(Scroll:GetChildren()) do
if Match(x.Text,Text) then
Index = Index + 1
x.Position = UDim2.new(0,0,0,Index*x.AbsoluteSize.Y-x.AbsoluteSize.Y)
x.Visible = true
SizeY = SizeY + x.AbsoluteSize.Y
Scroll.CanvasSize = UDim2.new(0,0,0,SizeY)
else
x.Visible = false
end
end
end
CIndex('')
Bar:GetPropertyChangedSignal("Text"):Connect(function()
CIndex(Bar.Text)
end)
--Stuff
while wait() do
if SEIZURE then
LPLR.Character.HumanoidRootPart.Massless = true
wait()
LPLR.Character.HumanoidRootPart.Massless = false
wait()
end
end