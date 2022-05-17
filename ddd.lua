local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("POF:Remastered") -- Creates the window

local b = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("LocalPlayer")

local d = w:CreateFolder("Misc")


c:Button("Die",function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)

b:Button("Bring Gold",function()
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Gold" then
            v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end)

b:Button("Bring Silver",function()
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Silver" then
            v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end)

b:Button("Bring Copper",function()
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Copper" then
            v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end)

b:Button("Visible Plates",function()
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Plate" then
            v.Transparency = 0
        end
    end
end) --game:GetService("Workspace").PlateStorage

b:Toggle("Die on Obby?",function(bool)
    shared.toggle = bool
    print(shared.toggle)
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Lava" then
        v.CanTouch = shared.toggle
        end
        end
end)

c:Slider("Walkspeed",{
    min = 0; -- min value of the slider
    max = 100; -- max value of the slider
    precise = false; -- max 2 decimals
},function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

c:Slider("Jumppower",{
    min = 0; -- min value of the slider
    max = 200; -- max value of the slider
    precise = false; -- max 2 decimals
},function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)

--b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--    print(mob)
--end)

--b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--    print("Yes")
--end)

--b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--    print(color)
--end)

--b:Box("Box","number",function(value) -- "number" or "string"
--    print(value)
--end)

d:DestroyGui()

--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]
