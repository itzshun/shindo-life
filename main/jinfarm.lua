local KeyState;

while getgenv().Jin.AutoEquip do wait()
    if getgenv().Jin.AutoEquip == true then
        local FindBijuu = game:GetService("Players").LocalPlayer.Character:FindFirstChild("bodyeffect")
        local FindMode = game:GetService("Players").LocalPlayer.Character.combat.mode
        if FindBijuu and FindMode.Value >= getgenv().Jin.MaxMD then
            KeyState = "zend"
        elseif not FindBijuu and FindMode.Value >= getgenv().Jin.MaxMD then
            KeyState = "z"
            local A_1 = "key"
            local A_2 = KeyState
            local Event = game:GetService("Workspace").ItzShun.combat.update
            Event:FireServer(A_1, A_2)
        end
        local FindChakra = game:GetService("Players").LocalPlayer.statz.mastery.chakra
        if FindChakra.Value <= 6000 then
            return
        else
            local A_1 = "addstat"
            local A_2 = "chakra"
            local A_3 = getgenv().Jin.Chakra
            local Event = game:GetService("Players").ItzShun.startevent
            Event:FireServer(A_1, A_2, A_3)
        end
        local FindNin = game:GetService("Players").LocalPlayer.statz.mastery.ninjutsu
        if FindNin.Value <= 6000 then
            return
        else
            local A_1 = "addstat"
            local A_2 = "ninjutsu"
            local A_3 = getgenv().Jin.Ninjutsu
            local Event = game:GetService("Players").LocalPlayer.startevent
            Event:FireServer(A_1, A_2, A_3)
        end
    end
end
