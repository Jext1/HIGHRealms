local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Jext1/HIGHRealms/refs/heads/main/HighRelamsOrion.lua')))()

local Window = OrionLib:MakeWindow({Name = "High Realms Xmas", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

local Tab1 = Window:MakeTab({
    Name = "Xmas",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Mob Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab3 = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

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
Tab2:AddDropdown({
    Name = "Mobs",
    Default = "Mobs",
    Options = {"Slime", "Gizmos", "Scatters", "Muchers", "Flamelet", "Spiders", "Grimthorn"},
    Callback = function(Value)
        selectedMob = Value
        print("Selected Mob: " .. selectedMob)
    end    
})

-- Toggle logic to enable or disable teleporting
Tab2:AddToggle({
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

Tab3:AddParagraph("Credits","ZhediH, Ai and Anya")

Tab3:AddButton({
	Name = "Youtube",
	Callback = function()
      		setclipboard("https://youtube.com/@zhedihacks?si=WBQ885-sWKFXq_9g")
  	end    
})

Tab3:AddButton({
	Name = "Discord",
	Callback = function()
      		setclipboard("Soon!")
  	end    
})
