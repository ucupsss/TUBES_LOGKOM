% Fakta Pokemon: Nama, Rarity, Type, HP, ATK, DEF, Level, Evolusi, Level Evolusi, Skill1, Skill2
pokemon(charmander, common, fire, 35, 15, 10, 5, charmeleon, 15, scratch, ember).
pokemon(squirtle, common, water, 40, 12, 15, 5, wartortle, 15, tackle, water_gun).
pokemon(pidgey, common, flying, 30, 14, 10, 5, none, 0, tackle, gust).
pokemon(charmeleon, common, fire, 45, 20, 15, 16, none, 0, ember, fire_spin).
pokemon(wartortle, common, water, 45, 17, 17, 16, none, 0, water_gun, bubble).
pokemon(pikachu, rare, electric, 30, 16, 10, 5, none, 0, thunder_shock, quick_attack).
pokemon(geodude, rare, rock, 30, 20, 25, 5, none, 0, tackle, rock_throw).
pokemon(snorlax, epic, normal, 70, 30, 20, 5, none, 0, tackle, rest).
pokemon(articuno, legendary, ice, 60, 28, 35, 20, none, 0, gust, ice_shard).

% Fakta Skill: Nama, Tipe, Power, Efek
skill(tackle, normal, 35, none).
skill(scratch, normal, 35, none).
skill(ember, fire, 40, burn).
skill(fire_spin, fire, 35, burn2).
skill(water_gun, water, 40, none).
skill(bubble, water, 30, lower_atk).
skill(gust, flying, 30, none).
skill(thunder_shock, electric, 40, paralyze).
skill(quick_attack, normal, 30, priority).
skill(rock_throw, rock, 50, none).
skill(rest, normal, 0, sleep).
skill(ice_shard, ice, 40, priority).

% Efektivitas Serangan
% efektif(AttackerType, DefenderType)
efektif(fire, ice).
efektif(water, fire).
efektif(electric, water).
efektif(rock, fire).
efektif(rock, flying).
efektif(rock, ice).
efektif(ice, flying).

% Tidak efektif
tidak_efektif(fire, water).
tidak_efektif(water, electric).
tidak_efektif(normal, rock).
tidak_efektif(flying, electric).
tidak_efektif(flying, rock).
tidak_efektif(ice, fire).
tidak_efektif(ice, rock).
tidak_efektif(ice, water).