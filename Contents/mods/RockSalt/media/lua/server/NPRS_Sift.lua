
--Randomize findings for dirt sifting.
function NPRS_SiftDirt(items, result, player)
    skill = player:getPerkLevel(Perks.PlantScavenging);

    dirtLvl0 = 1024+(18.6*skill);
    dirtLvl1 = 512+(18.6*skill);
    dirtLvl2 = 256+(18.6*skill);
    dirtLvl3 = 128+(18.6*skill);
    dirtLvl4 = 64+(18.6*skill);
    dirtLvl5 = 32+(18.6*skill);
    dirtLvl6 = 16+(18.6*skill);
    dirtLvl7 = 8+(18.6*skill);
    dirtLvl8 = 4+(18.6*skill);
    dirtLvl9 = 2+(18.6*skill);
    dirtLvl10 = 1+(18.6*skill);
	
    nothing = 2048-(204.8*skill);
	
    chance = ZombRand(4096);
	
    secondChance = 0;
	
    if chance <= dirtLvl4+dirtLvl5+dirtLvl6+dirtLvl7+dirtLvl8+dirtLvl9+dirtLvl10 then	
		player:getInventory():AddItem("NP_RockSalt.NPRS_Rocksalt");
    elseif chance <= dirtLvl1+dirtLvl2+dirtLvl3+dirtLvl4+dirtLvl5+dirtLvl6+dirtLvl7+dirtLvl8+dirtLvl9+dirtLvl10 then
	    secondChance = ZombRand(2);
        if secondChance == 0 then
            player:getInventory():AddItem("Base.Stone");
        elseif secondChance == 1 then
            player:getInventory():AddItem("Base.SharpedStone");
        end	
    elseif chance <= dirtLvl0+dirtLvl1+dirtLvl2+dirtLvl3+dirtLvl4+dirtLvl5+dirtLvl6+dirtLvl7+dirtLvl8+dirtLvl9+dirtLvl10 then
		player:getInventory():AddItem("Base.Worm");
    end
	
	player:getStats():setFatigue(player:getStats():getFatigue()+0.05)
end

function Give3ForagingXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.PlantScavenging, 3);
end
