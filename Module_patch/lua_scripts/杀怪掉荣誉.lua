print(">>Script: LootRongYu Loading... OK")
local itemID=43308
local itemcount=10

local function AddRongYu(event, killer, killed)
	local honornum = killer:GetHonorPoints()
	local arenanum = killer:GetArenaPoints()
	
	if(killer:IsHonorOrXPTarget(killed)) then
		--killer:AddItem(itemID, itemcount)--
		killer:SetHonorPoints(honornum + 10)
		--killer:SetArenaPoints(arenanum + 0)--
		killer:SendBroadcastMessage("")
	end
end

RegisterPlayerEvent(7,AddRongYu)