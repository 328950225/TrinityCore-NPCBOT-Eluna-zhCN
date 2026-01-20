-- =================================================================
-- Random Item Stats - Eluna Lua 实现
-- 逻辑适配：0003-RandomItemStats.patch
-- =================================================================

local RandomItemStats = {
    Enable = 1,          -- Random.ItemStats.Enable
    Rate = 10,           -- Random.ItemStats.Rate (出现概率 10%)
    MinItemLevel = 1,    -- Random.ItemStats.ItemLevel (最低触发物品等级)
    LevelUpMultiplier = 400 -- Random.ItemStats.ItemLevelUp (属性加成倍数)
}

-- 属性池定义 (对应数据库或 patch 中的常用随机属性)
-- 这些 ID 是附魔 ID (SpellItemEnchantment.dbc)
local AttrPool = {
    [1] = {1606, 1611, 1616}, -- 力量
    [2] = {1607, 1612, 1617}, -- 敏捷
    [3] = {1608, 1613, 1618}, -- 耐力
    [4] = {1609, 1614, 1619}, -- 智力
    [5] = {1610, 1615, 1620}, -- 精神
}

local function OnItemLooted(event, player, item)
    if (RandomItemStats.Enable ~= 1) then return end

    local template = item:GetTemplate()
    local iLevel = template:GetItemLevel()

    -- 检查是否符合等级要求且命中概率
    if (iLevel >= RandomItemStats.MinItemLevel and math.random(1, 100) <= RandomItemStats.Rate) then
        
        -- 根据 ItemLevelUp 计算加成逻辑 (复刻 C++ patch 的算法)
        -- 这里我们随机选取 1-3 个槽位进行随机附魔
        local count = math.random(1, 3)
        for i = 1, count do
            local attrType = math.random(1, #AttrPool)
            local enchants = AttrPool[attrType]
            local finalEnchant = enchants[math.random(1, #enchants)]
            
            -- 设置附魔槽位 (通常从使用 槽位 6-10 以免冲突)
            item:SetEnchantment(finalEnchant, 5 + i)
        end
        
        player:SendAreaTriggerMessage("|cffff0000[随机附魔]|r: " .. item:GetItemLink() .. " 已获得神秘属性加成!")
    end
end

-- 注册玩家获得物品事件 (Event ID 32: OnLootItem)
RegisterPlayerEvent(32, OnItemLooted)
-- 也可以增加任务奖励获得事件 (Event ID 34: OnQuestRewardItem)
RegisterPlayerEvent(34, OnItemLooted)

print(">> [LUA] 随机附魔脚本已加载。配置：Rate="..RandomItemStats.Rate..", MinLvl="..RandomItemStats.MinItemLevel)