local KeyState;

while getgenv().Jin.Active do wait()
    if getgenv().Jin.Active == true then
        local JinChecker = game:GetService("Players").LocalPlayer.Character:FindFirstChild("bodyeffect")
        local MD = game:GetService("Players").LocalPlayer.Character.combat.mode

        if JinChecker and MD.Value >= getgenv().Jin.MaxMD then
            KeyState = "zend"
        elseif not JinChecker and MD.Value >= getgenv().Jin.MaxMD then
            KeyState = "z"
            local A_1 = "key"
            local A_2 = KeyState
            local Event = game:GetService("Players").LocalPlayer.Character.combat.update
            Event:FireServer(A_1, A_2)
        end

        local FindChakra = game:GetService("Players").LocalPlayer.statz.mastery:FindFirstChild("chakra")

        if FindChakra and FindChakra.Value >= getgenv().Jin.Chakra then
            local FindNin = game:GetService("Players").LocalPlayer.statz.mastery:FindFirstChild("ninjutsu")

            if FindNin and FindNin.Value >= getgenv().Jin.Ninjutsu then
                local A_1 = "addstat"
                local A_2 = "ninjutsu"
                local A_3 = 1000
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2, A_3)
            end
        else
            local A_1 = "addstat"
            local A_2 = "chakra"
            local A_3 = 1000
            local Event = game:GetService("Players").LocalPlayer.startevent
            Event:FireServer(A_1, A_2, A_3)
        end
    end
end
