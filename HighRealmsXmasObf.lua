local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Jext1/HIGHRealms/refs/heads/main/HighRelamsOrion.lua')))()

local Window = OrionLib:MakeWindow({Name = "High Realms Xmas", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

local Tab1 = Window:MakeTab({
    Name = "Tp",
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
