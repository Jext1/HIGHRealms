local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Jext1/HIGHRealms/refs/heads/main/HighRelamsOrion.lua')))()

local Window = OrionLib:MakeWindow({Name = "High Realms - DarkHole ", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

local TabHome = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab1 = Window:MakeTab({
    Name = "Xmas",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabMobs = Window:MakeTab({
    Name = "Mob Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabBlocks = Window:MakeTab({
    Name = "Blocks Farm",
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

Tab1:AddButton({
    Name = "Snowman",
    Callback = function()
        local function findSnowmanModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Snowman" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local snowman = findSnowmanModel()

        if snowman then
            print("Snowman model found:", snowman:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if snowman.PrimaryPart then
                humanoidRootPart.CFrame = snowman.PrimaryPart.CFrame
                print("Teleported to Snowman!")
            else
                warn("Snowman model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Snowman model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Present",
    Callback = function()
        local function findPresentModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Present" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local present = findPresentModel()

        if present then
            print("Present model found:", present:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if present.PrimaryPart then
                humanoidRootPart.CFrame = present.PrimaryPart.CFrame
                print("Teleported to Present!")
            else
                warn("Present model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Present model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Ornament",
    Callback = function()
        local function findOrnamentModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Ornament" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local ornament = findOrnamentModel()

        if ornament then
            print("Ornament model found:", ornament:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if ornament.PrimaryPart then
                humanoidRootPart.CFrame = ornament.PrimaryPart.CFrame
                print("Teleported to Ornament!")
            else
                warn("Ornament model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Ornament model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "SnowFlake",
    Callback = function()
        local function findSnowflakeModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Snowflake" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local snowflake = findSnowflakeModel()

        if snowflake then
            print("Snowflake model found:", snowflake:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if snowflake.PrimaryPart then
                humanoidRootPart.CFrame = snowflake.PrimaryPart.CFrame
                print("Teleported to Snowflake!")
            else
                warn("Snowflake model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Snowflake model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Stocking",
    Callback = function()
        local function findStockingModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Stocking" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local stocking = findStockingModel()

        if stocking then
            print("Stocking model found:", stocking:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if stocking.PrimaryPart then
                humanoidRootPart.CFrame = stocking.PrimaryPart.CFrame
                print("Teleported to Stocking!")
            else
                warn("Stocking model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Stocking model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Christmas Lights",
    Callback = function()
        local function findChristmasLightsModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Christmas Lights" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local christmasLights = findChristmasLightsModel()

        if christmasLights then
            print("Christmas Lights model found:", christmasLights:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if christmasLights.PrimaryPart then
                humanoidRootPart.CFrame = christmasLights.PrimaryPart.CFrame
                print("Teleported to Christmas Lights!")
            else
                warn("Christmas Lights model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Christmas Lights model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Hot Chocolate",
    Callback = function()
        local function findHotChocolateModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Hot Chocolate" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local hotChocolate = findHotChocolateModel()

        if hotChocolate then
            print("Hot Chocolate model found:", hotChocolate:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if hotChocolate.PrimaryPart then
                humanoidRootPart.CFrame = hotChocolate.PrimaryPart.CFrame
                print("Teleported to Hot Chocolate!")
            else
                warn("Hot Chocolate model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Hot Chocolate model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Candy Cane",
    Callback = function()
        local function findCandyCaneModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Candy Cane" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local candyCane = findCandyCaneModel()

        if candyCane then
            print("Candy Cane model found:", candyCane:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if candyCane.PrimaryPart then
                humanoidRootPart.CFrame = candyCane.PrimaryPart.CFrame
                print("Teleported to Candy Cane!")
            else
                warn("Candy Cane model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Candy Cane model found in the workspace.")
        end
    end    
})

Tab1:AddButton({
    Name = "Portal",
    Callback = function()
        local function findGameExitModel()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == "Game Exit" and descendant:IsA("Model") then
                    return descendant
                end
            end
            return nil
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local gameExit = findGameExitModel()

        if gameExit then
            print("Game Exit model found:", gameExit:GetFullName())

            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if gameExit.PrimaryPart then
                humanoidRootPart.CFrame = gameExit.PrimaryPart.CFrame
                print("Teleported to Game Exit!")
            else
                warn("Game Exit model has no PrimaryPart. Set one in the Model properties.")
            end
        else
            print("No Game Exit model found in the workspace.")
        end
    end    
})

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

-- Wood selection logic
local selectedWood = nil
local teleporting = false

-- This function handles teleportation to the selected wood
local function teleportToSelectedWood(player, woodType)
    local partName = ""

    if woodType == "Oak Tree" then
        partName = "Oak_Wood"
    elseif woodType == "Mahogany Tree" then
        partName = "Mahogany_Wood"
    elseif woodType == "Cherry Tree" then
        partName = "Cherry_Wood"
    elseif woodType == "Ash Tree" then
        partName = "Ash_Wood"
    elseif woodType == "DarkHallow Tree" then
        partName = "DH_Wood"
    elseif woodType == "Web Tree" then
        partName = "Web_Wood"
    else
        warn("No valid wood type selected!")
        return
    end

    local islandFolder = game.Workspace:FindFirstChild("Island")
    if not islandFolder then
        warn("Island folder not found in Workspace")
        return
    end

    -- Function to find the closest wood
    local function getClosestWood(player, partName)
        local closestWood = nil
        local shortestDistance = math.huge

        for _, wood in pairs(islandFolder:GetChildren()) do
            if wood:IsA("Model") and wood:FindFirstChild(partName) then
                local woodPart = wood[partName]
                local distance = (player.Character.HumanoidRootPart.Position - woodPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestWood = wood
                end
            end
        end

        return closestWood
    end

    -- Function to teleport the player to the closest wood
    local function teleportToWood(player, partName)
        while teleporting do
            if not player or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
                warn("Player or their HumanoidRootPart not found")
                wait(1)
                continue
            end

            local closestWood = getClosestWood(player, partName)
            if closestWood and closestWood:FindFirstChild(partName) then
                local woodPart = closestWood[partName]
                player.Character.HumanoidRootPart.CFrame = woodPart.CFrame * CFrame.new(0, 5, 0)  -- Offset to avoid overlapping
                wait(0.5)
            else
                wait(0.5)
            end
        end
    end

    teleportToWood(player, partName)
end

-- Dropdown menu logic to select the wood type
TabBlocks:AddDropdown({
    Name = "Wood Types",
    Default = "",
    Options = {"Oak Tree", "Mahogany Tree", "Cherry Tree", "Ash Tree", "DarkHallow Tree", "Web Tree"},
    Callback = function(Value)
        selectedWood = Value
        print("Selected Wood: " .. selectedWood)
    end    
})

-- Toggle logic to enable or disable teleporting
TabBlocks:AddToggle({
    Name = "Wood Farm (Does Not Work Well)",
    Default = false,
    Callback = function(Value)
        teleporting = Value
        if teleporting then
            print("Teleporting to " .. selectedWood)
            -- Start teleporting to the selected wood
            local player = game.Players.LocalPlayer
            teleportToSelectedWood(player, selectedWood)
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
