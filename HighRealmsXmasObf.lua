local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Jext1/HIGHRealms/refs/heads/main/HighRelamsOrion.lua')))()

local Window = OrionLib:MakeWindow({Name = "High Realms - DarkHole ", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

local TabHome = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabMobs = Window:MakeTab({
    Name = "Mob Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabItems = Window:MakeTab({
    Name = "Items Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabCredits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TabHome:AddParagraph("Disclaimer","This Script Does Not Auto Click SO Please Set Up A Auto Clicker Also The Tree And Flower Farm Are Rushed And Are Bugged -DarkHole Team")

local walkSpeedValue = 16 -- Default walk speed
local jumpHeightValue = 8 -- Default jump height (use Humanoid.JumpHeight for consistency)

-- Function to set the walk speed of the player's character
local function setWalkSpeed(character, speed)
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.WalkSpeed = speed
		end
	end
end

-- Function to set the jump height of the player's character
local function setJumpHeight(character, height)
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.UseJumpPower = false -- Ensure Humanoid uses JumpHeight
			humanoid.JumpHeight = height
		end
	end
end

-- Event listener for when the player's character respawns
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
	-- Delay setting the walk speed and jump height to ensure the character is fully loaded
	character:WaitForChild("Humanoid")
	setWalkSpeed(character, walkSpeedValue)
	setJumpHeight(character, jumpHeightValue)
end)

-- Add slider for walk speed
TabHome:AddSlider({
	Name = "Walk Speed",
	Min = 16,
	Max = 250,
	Default = 16,
	Increment = 1,
	ValueName = "Walk Speed",
	Callback = function(Value)
		walkSpeedValue = Value
		setWalkSpeed(game.Players.LocalPlayer.Character, walkSpeedValue)
	end    
})

TabHome:AddLabel("Default Speed Is 16")

-- Add slider for jump height
TabHome:AddSlider({
	Name = "Jump Height",
	Min = 8, -- Default Roblox jump height
	Max = 500,
	Default = 8,
	Increment = 1,
	ValueName = "Jump Height",
	Callback = function(Value)
		jumpHeightValue = Value
		setJumpHeight(game.Players.LocalPlayer.Character, jumpHeightValue)
	end    
})

-- Set the initial walk speed and jump height when the script first runs
if game.Players.LocalPlayer.Character then
	setWalkSpeed(game.Players.LocalPlayer.Character, walkSpeedValue)
	setJumpHeight(game.Players.LocalPlayer.Character, jumpHeightValue)
end

TabHome:AddLabel("Default Jump Power Is 8")

-- Initialize the InfiniteJump variable
local InfiniteJump = false

-- Function to handle the toggle
TabHome:AddToggle({
	Name = "Inf Jump",
	Default = false,
	Callback = function(Value)
		InfiniteJump = Value
		print("Infinite Jump is now", InfiniteJump)
	end    
})

-- Infinite jump script
game:GetService("UserInputService").JumpRequest:Connect(function()
	if InfiniteJump == true then
		local player = game:GetService("Players").LocalPlayer
		if player and player.Character then
			local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid:ChangeState("Jumping")
			end
		end
	end
end)

-- Mobs selection logic
local selectedMob = nil
local teleporting = false

-- This function handles teleportation to the selected mob
local function teleportToSelectedMob(player, mobType)
    local partName = ""

    if mobType == "Slime" then
        partName = "Slime_Body"
    elseif mobType == "Gizmos" then
        partName = "Gizmo.001"
    elseif mobType == "Scatters" then
        partName = "Scatter_L_Arm"
    elseif mobType == "Muchers" then
        partName = "Muncher_Head_New"
    elseif mobType == "Flamelet" then
        partName = "Flamelet_Body"
    elseif mobType == "Spiders" then
        partName = "Body_Spider_Small"  -- Adjust this if necessary
    elseif mobType == "Grimthorn" then
        partName = "Cube.001"  -- Adjust this if necessary
    elseif mobType == "Archnella" then
        partName = "LB_Leg_Spider"  -- Adjust this if necessary
    else
        warn("No valid mob selected!")
        return
    end

    local mobsFolder = game.Workspace:FindFirstChild("Mobs")
    if not mobsFolder then
        warn("Mobs folder not found in Workspace")
        return
    end

    -- Function to find the closest mob
    local function getClosestMob(player, partName)
        local closestMob = nil
        local shortestDistance = math.huge

        for _, mob in pairs(mobsFolder:GetChildren()) do
            if mob:IsA("Model") and mob:FindFirstChild(partName) then
                local mobPart = mob[partName]
                local distance = (player.Character.HumanoidRootPart.Position - mobPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestMob = mob
                end
            end
        end

        return closestMob
    end

    -- Function to teleport the player to the closest mob
    local function teleportToMob(player, partName)
        while teleporting do
            if not player or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
                warn("Player or their HumanoidRootPart not found")
                wait(1)
                continue
            end

            local closestMob = getClosestMob(player, partName)
            if closestMob and closestMob:FindFirstChild(partName) then
                local mobPart = closestMob[partName]
                player.Character.HumanoidRootPart.CFrame = mobPart.CFrame * CFrame.new(0, 5, 0)  -- Offset to avoid overlapping
                wait(0.5)
            else
                wait(0.5)
            end
        end
    end

    teleportToMob(player, partName)
end

-- Dropdown menu logic to select the mob type
TabMobs:AddDropdown({
    Name = "Mobs",
    Default = "Mobs",
    Options = {"Slime", "Gizmos", "Scatters", "Muchers", "Flamelet", "Spiders", "Grimthorn", "Archnella"},
    Callback = function(Value)
        selectedMob = Value
        print("Selected Mob: " .. selectedMob)
    end    
})

-- Toggle logic to enable or disable teleporting
TabMobs:AddToggle({
    Name = "Mob Farm",
    Default = false,
    Callback = function(Value)
        teleporting = Value
        if teleporting then
            print("Teleporting to " .. selectedMob)
            -- Start teleporting to the selected mob
            local player = game.Players.LocalPlayer
            teleportToSelectedMob(player, selectedMob)
        else
            print("Stopped teleporting.")
        end
    end    
})

-- Teleportation logic
local teleporting = false

-- This function handles teleportation to flowers and mushrooms
local function teleportToFlowersAndMushrooms(player)
    local islandFolder = game.Workspace:FindFirstChild("Island")
    if not islandFolder then
        warn("Island folder not found in Workspace")
        return
    end

    -- Function to find the closest valid part
    local function getClosestPart(player, partNames)
        local closestPart = nil
        local shortestDistance = math.huge

        for _, model in pairs(islandFolder:GetChildren()) do
            if model:IsA("Model") then
                for _, partName in ipairs(partNames) do
                    if model:FindFirstChild(partName) then
                        local part = model[partName]
                        local distance = (player.Character.HumanoidRootPart.Position - part.Position).Magnitude
                        if distance < shortestDistance then
                            shortestDistance = distance
                            closestPart = part
                        end
                    end
                end
            end
        end

        return closestPart
    end

    -- Teleport the player to the closest part
    while teleporting do
        if not player or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            warn("Player or their HumanoidRootPart not found")
            wait(1)
            continue
        end

        local partNames = {"Poppy", "Meshes/Flower_Poppy_Flower", "Spots"}
        local closestPart = getClosestPart(player, partNames)
        if closestPart then
            player.Character.HumanoidRootPart.CFrame = closestPart.CFrame * CFrame.new(0, 5, 0) -- Offset to avoid overlapping
            wait(0.5)
        else
            wait(0.5)
        end
    end
end

-- Toggle logic to enable or disable teleporting
TabItems:AddToggle({
    Name = "Flower Farm",
    Default = false,
    Callback = function(Value)
        teleporting = Value
        if teleporting then
            print("Flower Farm enabled.")
            -- Start teleporting to flowers and mushrooms
            local player = game.Players.LocalPlayer
            teleportToFlowersAndMushrooms(player)
        else
            print("Flower Farm disabled.")
        end
    end    
})

TabCredits:AddParagraph("Credits","ZhediH, Ai and Anya")

TabCredits:AddButton({
	Name = "Youtube",
	Callback = function()
      		setclipboard("https://youtube.com/@zhedihacks?si=WBQ885-sWKFXq_9g")
  	end    
})

TabCredits:AddButton({
	Name = "Discord",
	Callback = function()
      		setclipboard("https://discord.gg/rMKXFXEGsU!")
  	end    
})

OrionLib:MakeNotification({
	Name = "Join Our Discord!",
	Content = "https://discord.gg/rMKXFXEGsU",
	Image = "rbxassetid://4483345998",
	Time = 5
})
