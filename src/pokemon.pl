% pokemon(Species, Rarity, Type, BaseHP, BaseATK, BaseDEF, Skill1, Skill2, EvoLevel, EvolutionTo)
pokemon(charmander, common, fire, 35, 15, 10, scratch, ember, 15, charmeleon).
pokemon(squirtle, common, water, 40, 12, 15, tackle, water_gun, 15, wartortle).
pokemon(pidgey, common, flying, 30, 14, 10, tackle, gust, 0, none).
pokemon(charmeleon, common, fire, 57, 27, 22, ember, fire_spin, 0, none).
pokemon(wartortle, common, water, 62, 23, 26, water_gun, bubble, 0, none).
pokemon(pikachu, rare, electric, 30, 16, 10, thunder_shock, quick_attack, 0, none).
pokemon(geodude, rare, rock, 30, 20, 25, tackle, rock_throw, 0, none).
pokemon(snorlax, epic, normal, 70, 30, 20, tackle, rest, 0, none).
pokemon(articuno, legendary, ice, 60, 28, 35, gust, ice_shard, 0, none).
% pokemon(mewtwo, legendary, psychic, 250, 300, 250, psychic_blast, mind_shock, 0, none).

% Fakta Skill: Nama, Tipe, Power, Efek
skill(tackle, normal, 35, none).
skill(scratch, normal, 35, none).
skill(ember, fire, 40, burn1).
skill(waterGun, water, 40, none).
skill(gust, flying, 30, none).
skill(fireSpin, fire, 35, burn2).
skill(bubble, water, 30, lowerAtk).
skill(thunderShock, electric, 40, paralyze).
skill(quickAttack, normal, 30, priorityAttack).
skill(rockThrow, rock, 50, none).
skill(rest, normal, 0, sleep).
skill(iceShard, ice, 40, priorityAttack).


% efektivitasSerangan dan Tidak efektivitasSerangan Serangan
% efektivitasSerangan(SkillType, TargetType, Multiplier)
efektivitasSerangan(fire, ice, 1.5).
efektivitasSerangan(fire, water, 0.5).
efektivitasSerangan(fire, rock, 0.5).
efektivitasSerangan(fire, fire, 0.5).
efektivitasSerangan(water, fire, 1.5).
efektivitasSerangan(water, rock, 1.5).
efektivitasSerangan(water, electric, 0.5).
efektivitasSerangan(water, water, 0.5).
efektivitasSerangan(electric, water, 1.5).
efektivitasSerangan(electric, flying, 1.5).
efektivitasSerangan(electric, electric, 0.5).
efektivitasSerangan(electric, rock, 0.5).
efektivitasSerangan(flying, electric, 0.5).
efektivitasSerangan(flying, rock, 0.5).
efektivitasSerangan(flying, ice, 0.5).
efektivitasSerangan(rock, fire, 1.5).
efektivitasSerangan(rock, flying, 1.5).
efektivitasSerangan(rock, ice, 1.5).
efektivitasSerangan(rock, water, 0.5).
efektivitasSerangan(rock, rock, 0.5).
efektivitasSerangan(ice, flying, 1.5).
efektivitasSerangan(ice, fire, 0.5).
efektivitasSerangan(ice, rock, 0.5).
efektivitasSerangan(ice, water, 0.5).
efektivitasSerangan(ice, ice, 0.5).
efektivitasSerangan(normal, rock, 0.5).

% baseExpRarity(Rarity, BaseEXP)
baseExpRarity(common, 20).
baseExpRarity(rare, 30).
baseExpRarity(epic, 40).
baseExpRarity(legendary, 50).

% baseExpGivenRarity(Rarity, Exp)
baseExpGivenRarity(common, 10).
baseExpGivenRarity(rare, 20).
baseExpGivenRarity(epic, 30).
baseExpGivenRarity(legendary, 40).

