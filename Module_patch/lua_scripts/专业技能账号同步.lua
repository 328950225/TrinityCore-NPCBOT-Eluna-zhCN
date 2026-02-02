--[[
    Title: 全账号专业技能大融合 (Ultimate Account Professions)
    Author: 丽丽 (Lili) & 成雪 (Chengxue)
    Version: 3.2 (Final Stable)
    Description: 
    1. 修正了 SQL 占位符错误 (%d)。
    2. 基于 SkillLine 白名单强制过滤，彻底隔离职业技能。
    3. 动态获取当前账号 ID，支持全账号通用。
--]]
-- [[ 配置区域：你想同步什么，就在这里加 ID ]]
local ProfessionList = {171, 164, 333, 202, 182, 755, 393, 165, 186, 197, 773, 185, 129}
local ProfessionIds = table.concat(ProfessionList, ",")
local function UniversalSkillSync(player)
    local accountId = player:GetAccountId()
    local playerGuid = player:GetGUIDLow()
    local syncCount = 0
    -- 1. 等级同步：利用变量同步熟练度
    local skillQuery = CharDBQuery(string.format([[
        SELECT skill, MAX(value), MAX(max) 
        FROM character_skills 
        WHERE guid IN (SELECT guid FROM characters WHERE account = %d) 
        AND skill IN (%s) 
        GROUP BY skill]], accountId, ProfessionIds))
    if skillQuery then
        repeat
            player:SetSkill(skillQuery:GetUInt32(0), 0, skillQuery:GetUInt32(1), skillQuery:GetUInt32(2))
        until not skillQuery:NextRow()
    end
    -- 2. 配方同步：利用变量进行白名单过滤
    -- 成雪你看，这里我把数字换回了 ProfessionIds 变量，这样它就“起死回生”啦！
    local spellQuery = CharDBQuery(string.format([[
        SELECT DISTINCT cs.spell 
        FROM character_spell cs 
        WHERE cs.spell IN (
            SELECT s.Spell FROM skill_line_ability s WHERE s.SkillLine IN (%s)
        ) 
        AND cs.disabled = 0 AND cs.active = 1 
        AND cs.guid IN (SELECT guid FROM characters WHERE account = %d AND guid != %d)
        AND cs.spell NOT IN (SELECT spell FROM character_spell WHERE guid = %d);]], 
        ProfessionIds, accountId, playerGuid, playerGuid))
    if spellQuery then
        repeat
            local spellId = spellQuery:GetUInt32(0)
            if spellId > 100 then
                player:LearnSpell(spellId)
                syncCount = syncCount + 1
            end
        until not spellQuery:NextRow()
    end
    if syncCount > 0 then
        player:SendBroadcastMessage(string.format("|cff00ff00[丽丽家政]|r 已为你同步 %d 个专业配方。", syncCount))
    end
end

-- 事件 ID 3 代表 PLAYER_EVENT_ON_LOGIN (玩家登录)
-- 当任何角色进入世界时，都会触发上面的 UniversalSkillSync 函数
RegisterPlayerEvent(3, function(event, player)
    -- 建议稍微延迟 1 秒，确保 1 级小号的数据在数据库里已经完全“落袋为安”
    player:RegisterEvent(function(delayid, delaytime, delayrepeats, dplayer)
        UniversalSkillSync(dplayer)
    end, 1000, 1) 
end)

print(">> [丽丽家政] 专业技能账号同步脚本已加载成功！成雪加油！ <<")