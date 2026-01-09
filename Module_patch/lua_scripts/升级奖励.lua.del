print(">>Script: LevelUpAward Loading... OK")

--[[70005	1
70006	10
70007	50
70008	100]]--


AWARD = {
{70001,10,1,"金币"},
{70001,20,2,"金币"},
{70001,30,4,"金币"},
{70001,40,8,"金币"},
{70001,50,16,"金币"},
{70001,60,32,"金币"},
{70001,70,64,"金币"},
{70001,80,128,"金币"},


};

local function LevelUpAward (event, player, oldLevel)
	local nowLevel = player:GetLevel()--得到当前等级
	local item = ""
	for _,v in pairs (AWARD) do
		if (nowLevel == v[2]) then
			--if v[1] == 0 then --给金币
			--	player:RunCommand(".modify money "..v[3]*10000)
			--	local ItemName = v[4]
			--	item = item.."|cffff0000["..ItemName.."]|r"..v[3].."个"
				--player:SendBroadcastMessage("恭喜你提升到"..nowLevel.."级,获得系统奖励["..v[4].."]"..v[3].."个。")
				--SendWorldMessage("|cffff0000[系统公告]|r|cffcc00cc恭喜玩家|r|Hplayer:"..player:GetName().."|h|cff3333ff["..player:GetName().."]|h|r|cffcc00cc提升到"..nowLevel.."级,获得系统奖励["..v[4].."]"..v[3].."个。|r")
			--else
				player:AddItem(v[1], v[3])
				local ItemName = GetItemLink(v[1])
				item = item..ItemName..v[3].."个"
				--player:SendBroadcastMessage("恭喜你提升到"..nowLevel.."级,获得系统奖励["..ItemName.."]"..v[3].."个。")
				--SendWorldMessage("|cffff0000[系统公告]|r|cffcc00cc恭喜玩家|r|Hplayer:"..player:GetName().."|h|cff3333ff["..player:GetName().."]|h|r|cffcc00cc提升到"..nowLevel.."级,获得系统奖励["..ItemName.."]"..v[3].."个。|r")
			--end
		end
	end
	if item ~= "" and item ~= nil then
		player:SendBroadcastMessage("恭喜你提升到"..nowLevel.."级,获得系统奖励:"..item.."。")
		SendWorldMessage("|cffff0000[系统公告]|r|cffcc00cc恭喜玩家|r|Hplayer:"..player:GetName().."|h|cff3333ff["..player:GetName().."]|h|r|cffcc00cc提升到"..nowLevel.."级,获得系统奖励:"..item.."。|r")
	end
end

RegisterPlayerEvent(13, LevelUpAward)