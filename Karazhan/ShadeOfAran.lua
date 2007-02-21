﻿------------------------------
--      Are you local?    --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["Shade of Aran"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)
local drinkannounced
local addsannounced

----------------------------
--      Localization     --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Aran",

	adds_cmd = "adds",
	adds_name = "Elementals",
	adds_desc = "Warn about the water elemental adds spawning",

	drink_cmd = "drink",
	drink_name = "Drinking",
	drink_desc = ("Warn when %s starts to drink"):format(boss),

	engage_cmd = "engage",
	engage_name = "Engage",
	engage_desc = ("Warn when %s has been engaged"):format(boss),

	blizzard_cmd = "blizzard",
	blizzard_name = "Blizzard",
	blizzard_desc = "Warn when Blizzard is being cast",

	pull_cmd = "pull",
	pull_name = "Pull/Super AE",
	pull_desc = "Warn for the magnetic pull and Super Arcane Explosion",

	flame_cmd = "flame",
	flame_name = "Flame Wreath",
	flame_desc = "Warn when Flame Wreath is being cast",

	adds_message = "Elementals Incoming!",
	adds_warning = "Elementals Soon",
	adds_trigger = "I'm not finished yet! No, I have a few more tricks up my sleeve...",
	adds_bar = "Elementals despawn",

	drink_trigger = "Surely you wouldn't deny an old man a replenishing drink? No, no, I thought not.",
	drink_warning = "Low Mana - Drinking Soon!",
	drink_message = "Drinking - AoE Polymorph!",
	drink_bar = "Super Pyroblast Incoming",

	engage_trigger1 = "I'll not be tortured again!",
	engage_trigger2 = "Who are you? What do you want? Stay away from me!",
	engage_trigger3 = "Please, no more! My son... he's gone mad!",
	engage_message = "%s Engaged",

	blizzard_trigger1 = "Back to the cold dark with you!",
	blizzard_trigger2 = "I'll freeze you all!",
	blizzard_message = "Blizzard!",

	pull_message = "Arcane Explosion!",
	pull_trigger1 = "Yes, yes my son is quite powerful... but I have powers of my own!",
	pull_trigger2 = "I am not some simple jester! I am Nielas Aran!",
	pull_bar = "Arcane Explosion",

	flame_warning = "Casting: Flame Wreath!",
	flame_trigger1 = "I'll show you: this beaten dog still has some teeth!",
	flame_trigger2 = "Burn, you hellish fiends!",

	flame_message = "Flame Wreath!",
	flame_bar = "Flame Wreath",
	flame_trigger = "casts Flame Wreath",
} end )

L:RegisterTranslations("deDE", function() return {
	adds_name = "Wasserelementare",
	adds_desc = "Warnt vor den Wasserelementaren bei 40%.",

	drink_name = "Trinken",
	drink_desc = ("Warnt, wenn %s zu trinken beginnt."):format(boss),

	engage_name = "Angriff",
	engage_desc = ("Warnt, wenn %s angegriffen wurde."):format(boss),

	blizzard_name = "Blizzard",
	blizzard_desc = "Warnt vor dem Blizzard.",

	pull_name = "Magnet/Super-AE",
	pull_desc = "Warnt vor dem Magnetpull und der Arkanen Explosion.",

	flame_name = "Flammenkranz",
	flame_desc = "Warnt, wenn jemand vom Flammenkranz betroffen ist.",

	adds_message = "Elementare!",
	adds_warning = "Elementare in K\195\188rze!",
	adds_trigger = "Ich bin noch nicht fertig! Nein, ich habe noch ein paar Tricks auf Lager…",
	adds_bar = "Elementare verschwinden",

	drink_trigger = "Ihr w\195\188rdet einem alten Mann doch nicht ein erfrischendes Getr\195\164nk verweigern? Nein nein, das h\195\164tte ich auch nicht gedacht.",
	drink_warning = "Wenig Mana - trinkt gleich!",
	drink_message = "Trinkt - AoE Polymorph!",
	drink_bar = "Super-Pyroblast kommt!",

	engage_trigger1 = "Qu\195\164lt mich nicht l\195\164nger!",
	engage_trigger2 = "Wer seid Ihr? Was wollt Ihr? Bleibt fern von mir!",
	engage_message = "%s angegriffen.",

	blizzard_trigger1 = "Zur\195\188ck in die eisige Finsternis mit Euch!",
	blizzard_trigger2 = "Ich werde Euch alle einfrieren!",
	blizzard_message = "Wirkt Blizzard!",

	pull_message = "Arkane Explosion wird gewirkt!",
	pull_trigger1 = "Ja, ja, mein Sohn ist sehr m\195\164chtig... aber ich habe meine eigenen Kr\195\164fte!",
	pull_trigger2 = "Ich bin kein einfacher Hofnarr! Ich bin Nielas Aran!",
	pull_bar = "Arkane Explosion",

	flame_warning = "Wirkt Flammenkranz!",
	flame_trigger1 = "Ich werde Euch zeigen: dieser gepr\195\188gelte Hund hat immer noch Z\195\164hne!",
	flame_trigger2 = "Brennt, Ihr herzlosen Teufel!",

	flame_message = "Flammenkranz!",
	flame_bar = "Flammenkranz",
	flame_trigger = "wirkt Flammenkranz",
} end )

L:RegisterTranslations("frFR", function() return {
	adds_name = "Alerte El\195\169mentaires",
	adds_desc = "Pr\195\169viens de l'apparition des \195\169l\195\169mentaires d'eau.",

	drink_name = "Alerte Boisson",
	drink_desc = ("Pr\195\169viens quand %s commence \195\160 boire."):format(boss),

	engage_name = "Alerte Engagement",
	engage_desc = "Pr\195\169viens du d\195\169but du combat.",

	blizzard_name = "Alerte Blizzard",
	blizzard_desc = "Pr\195\169viens de l'incantation du Blizzard.",

	pull_name = "Alerte Attraction / Sort de zone",
	pull_desc = "Pr\195\169viens de l'attraction magn\195\169tique et de l'explosion des arcanes.",

	flame_name = "Alerte Couronne de flammes",
	flame_desc = "Pr\195\169viens de l'incantation de Couronne de flammes.",

	adds_message = "El\195\169mentaires Imminent !",
	adds_warning = "El\195\169mentaires bient\195\180t",
	-- adds_trigger = "I'm not finished yet! No, I have a few more tricks up my sleeve...",
	adds_bar = "El\195\169mentaires",

	drink_trigger = "Vous ne refuseriez pas \195\160 un vieil homme une boisson revigorante\194\160? Non, c\226\128\153est bien ce que je pensais.",
	drink_warning = "Mana Faible - Boisson imminente !",
	drink_message = "Boisson - Polymorphisme de zone !",
	drink_bar = "Boisson",

	engage_trigger1 = " Je refuse d'\195\170tre \195\160 nouveau tortur\195\169\194\160!",
	engage_trigger2 = "Qui \195\170tes-vous\194\160? Qu\226\128\153est-ce que vous voulez\194\160? Ne m\226\128\153approchez pas\194\160!",
	engage_trigger3 = "Je vous en supplie, arr\195\170tez\194\160! Mon fils\226\128\166 est devenu fou\194\160!",
	engage_message = "%s Engag\195\169",

	blizzard_trigger1 = "Retournez dans les t\195\169n\195\168bres glaciales\194\160!",
	blizzard_trigger2 = "Je vais tous vous congeler\194\160!",
	blizzard_message = "Blizzard !",

	pull_message = "Explosion des Arcanes !",
	pull_trigger1 = "Oui, oui, mon fils est assez puissant\226\128\166 mais moi aussi je poss\195\168de quelques pouvoirs\194\160!",
	pull_trigger2 = "Je ne suis pas un simple bouffon\194\160! Je suis Niels Aran\194\160!",
	pull_bar = "Explosion des Arcanes",

	flame_warning = "Casting: Flame Wreath!",
	flame_trigger1 = "Je vais vous montrer que ce chien battu a encore de bons crocs\194\160!",
	flame_trigger2 = "Br\195\187lez, d\195\169mons de l\226\128\153enfer\194\160!",

	flame_message = "Couronne de flammes !",
	flame_bar = "Couronne de flammes",
	flame_trigger = "commence \195\160 lancer Couronne de flammes",
} end )

----------------------------------
--   Module Declaration    --
----------------------------------

BigWigsAran = BigWigs:NewModule(boss)
BigWigsAran.zonename = AceLibrary("Babble-Zone-2.2")["Karazhan"]
BigWigsAran.enabletrigger = boss
BigWigsAran.toggleoptions = {"engage", "adds", "drink", -1, "blizzard", "pull", "flame", "bosskill"}
BigWigsAran.revision = tonumber(("$Revision$"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function BigWigsAran:OnEnable()
	drinkannounced = nil
	addsannounced = nil

	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")

	self:RegisterEvent("UNIT_MANA")
	self:RegisterEvent("UNIT_HEALTH")

	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:RegisterEvent("CHAT_MSG_MONSTER_SAY")

	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH", "GenericBossDeath")
end

------------------------------
--    Event Handlers     --
------------------------------

function BigWigsAran:CHAT_MSG_MONSTER_YELL(msg)
	if self.db.profile.drink and msg == L["drink_trigger"] then
		self:Message(L["drink_message"], "Positive")
		self:Bar(L["drink_bar"], 15, "Spell_Fire_Fireball02")
	elseif self.db.profile.pull and (msg == L["pull_trigger1"] or msg == L["pull_trigger2"]) then
		self:Message(L["pull_message"], "Attention")
		self:Bar(L["pull_bar"], 12, "Spell_Nature_GroundingTotem")
	elseif self.db.profile.flame and (msg == L["flame_trigger1"] or msg == L["flame_trigger2"]) then
		self:Message(L["flame_warning"], "Important", nil, "Alarm")
		self:Bar(L["flame_bar"], 5, "Spell_Fire_Fire")
	elseif self.db.profile.blizzard and (msg == L["blizzard_trigger1"] or msg == L["blizzard_trigger2"]) then
		self:Message(L["blizzard_message"], "Attention")
	elseif self.db.profile.engage and (msg == L["engage_trigger1"] or msg == L["engage_trigger2"] or msg == L["engage_trigger3"]) then
		self:Message(L["engage_message"]:format(boss), "Positive")
	end
end

function BigWigsAran:CHAT_MSG_MONSTER_SAY(msg)
	if self.db.profile.adds and msg == L["adds_trigger"] then
		self:Message(L["adds_message"], "Important")
		self:Bar(L["adds_bar"], 90, "Spell_Frost_SummonWaterElemental_2")
	end
end

function BigWigsAran:CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE(msg)
	if self.db.profile.flame and msg:find(L["flame_trigger"]) then
		self:Message(L["flame_message"], "Important")
		self:Bar(L["flame_bar"], 21, "Spell_Fire_Fire")
	end
end

function BigWigsAran:UNIT_MANA(msg)
	if not self.db.profile.drink then return end
	if UnitName(msg) == boss then
		local mana = UnitMana(msg)
		if mana > 10000 and mana <= 20000 and not drinkannounced then
			self:Message(L["drink_warning"], "Urgent", nil, "Alert")
			drinkannounced = true
		elseif mana > 50000 and drinkannounced then
			drinkannounced = nil
		end
	end
end

function BigWigsAran:UNIT_HEALTH(msg)
	if not self.db.profile.adds then return end
	if UnitName(msg) == boss then
		local health = UnitHealth(msg)
		if health > 43 and health <= 46 and not addsannounced then
			self:Message(L["adds_warning"], "Urgent", nil, "Alert")
			addsannounced = true
		elseif health > 50 and addsannounced then
			addsannounced = false
		end
	end
end

