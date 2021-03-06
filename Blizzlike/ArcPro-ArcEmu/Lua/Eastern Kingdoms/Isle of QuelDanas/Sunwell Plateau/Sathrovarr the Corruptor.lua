--[[ ArcPro Speculation License - 
This software is provided as free and open source by the
team of The ArcPro Speculation Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Author: BrantX
~~End of License... Please Stand By...
-- ArcPro Speculation, January 19, 2011 - 2013. ]]

function Sathrovarr_OnEnterCombat(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "There will be no reprieve! My work here is nearly finished!")
	pUnit:RegisterEvent("Sath_Curse", 35000, 0)
	pUnit:RegisterEvent("Sath_ShadowBoltVolley", 10000, 0)
	pUnit:RegisterEvent("Sath_CorruptingStrike", 25000, 0)
	pUnit:RegisterEvent("Sathrovarr_Berserk", 60000, 0)
end

function Sathrovarr_Curse(pUnit, Event)
local Choice = math.random(1,2)
	if(Choice == 1) then
		pUnit:SendChatMessage(14, 0, "Your misery is my delight!")
	elseif(Choice == 2) then
		pUnit:SendChatMessage(14, 0, "I will watch you bleed!")
	end
	pUnit:CastSpellOnTarget(45034, pUnit:GetRandomPlayer(0))	
end

function Sathrovarr_ShadowBoltVolley(pUnit, Event)
local Choice = math.random(1,2)
	if(Choice == 1) then
		pUnit:SendChatMessage(14, 0, "Your misery is my delight!")
	elseif(Choice == 2) then
		pUnit:SendChatMessage(14, 0, "I will watch you bleed!")
	end
	pUnit:CastSpellOnTarget(45031,pUnit:GetRandomPlayer(0))
end

function Sathrovarr_CorruptingStrike(pUnit, Event)
local Choice = math.random(1,2)
	if(Choice == 1) then
		pUnit:SendChatMessage(14, 0, "Your misery is my delight!")
	elseif(Choice == 2) then
		pUnit:SendChatMessage(14, 0, "I will watch you bleed!")
	end
	pUnit:CastSpellOnTarget(45029,pUnit:GetRandomPlayer(0))	
end

function Sathrovarr_Berserk(pUnit,Event)
	pUnit:SendChatmessaeg(14, 0, "I have toyed with you long enough!")
	pUnit:CastSpellOnTarget(45032,pUnit:GetRandomPlayer(0))
end

function Sathrovarr_OnKill(pUnit, Event)
	local Choice = math.random(1,2)
	if(Choice == 1) then
		pUnit:SendChatMessage(14, 0, "Piteous mortal!")
	elseif(Choice == 2) then
		pUnit:SendChatMessage(14, 0, "Haven't you heard? I always win!")	
	end
end

function Sathrovarr_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Sathrovarr_OnDied(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "I'm never on the... losing... side!")
	pUnit:RemoveEvents()	
end

RegisterUnitEvent(24892, 1, "Sathrovarr_OnEnterCombat")
RegisterUnitEvent(24892, 2, "Sathrovarr_OnLeaveCombat")
RegisterUnitEvent(24892, 3, "Sathrovarr_OnKill")
RegisterUnitEvent(24892, 4, "Sathrovarr_OnDied")