if not MOAT_BP then MOAT_BP = {} end
MOAT_BP.Examples = {}
MOAT_BP.tiers = {}
--xp_needed = 2000

local function add_tier_item( name, rarity, model, ID, effect)
    table.insert(MOAT_BP.tiers,{
        name = name,
        rarity = rarity,
        model = model,
        effect = effect or "",
        ID = ID
    })
end
--Custom itemids:
-- -1 = 5000 ic
-- -2 = 10000 ic


function MOAT_BP.AddExample(itemid,itemtbl)
    MOAT_BP.Examples[itemid] = itemtbl
end

if CLIENT then
    net.Receive("BP.ItemExample",function()
        MOAT_BP.AddExample(net.ReadInt(16),net.ReadTable())
    end)
end

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 1
add_tier_item("Random June Weapon",6,"tier",9602,"glow") -- 2


add_tier_item("Random Splashing Weapon",5,"tier",9601,"") -- 3

add_tier_item("Random Fun Weapon",4,"tier",9603,"") -- 4

add_tier_item("5x Random Crates",6,"crates",-3,"") -- 5

add_tier_item("Random Beach Weapon",5,"tier",9604,"") -- 6

add_tier_item("Random Blazing Weapon",5,"tier",9605,"") -- 7

add_tier_item("Aperture Containment Model",5,"models/player/aphaztech.mdl",45,"") -- 8

add_tier_item("Random Blistering Weapon",4,"tier",9606,"") -- 9

add_tier_item("Random Breezy Weapon",5,"tier",9607,"") -- 10

add_tier_item("Random Fragrant Weapon",6,"tier",9608,"") -- 11

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 12

add_tier_item("Random Refreshing Weapon",5,"tier",9610,"") -- 13

add_tier_item("Random Poolside Weapon",4,"tier",9609,"") -- 14

add_tier_item("5x Random Crates",6,"crates",-3,"") -- 15

add_tier_item("Random Delightful Weapon",5,"tier",9611,"") -- 16

add_tier_item("Random Hazy Weapon",5,"tier",9613,"") -- 17

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 18

add_tier_item("Random Ripe Weapon",4,"tier",9614,"") -- 19

add_tier_item("Random Sunburnt Weapon",5,"tier",9615,"") -- 20

add_tier_item("Random Scorching Weapon",6,"tier",9612,"fire") -- 21

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 22

add_tier_item("Random Blazing Weapon",5,"tier",9605,"") -- 23

add_tier_item("Random Beach Weapon",5,"tier",9604,"") -- 24

add_tier_item("5x Random Crates",6,"crates",-3,"") -- 25

add_tier_item("Random Fun Weapon",4,"tier",9603,"") -- 26

add_tier_item("Random Splashing Weapon",5,"tier",9601,"") -- 27

add_tier_item("Random Breezy Weapon",5,"tier",9607,"") -- 28

add_tier_item("Random Poolside Weapon",4,"tier",9609,"") -- 29

add_tier_item("Random Refreshing Weapon",5,"tier",9610,"") -- 30

add_tier_item("Random July Weapon",6,"tier",9616,"glow") -- 31

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 32

add_tier_item("Random Beach Weapon",5,"tier",9604,"") -- 33

add_tier_item("Random Blazing Weapon",5,"tier",9605,"") -- 34

add_tier_item("5x Random Crates",6,"crates",-3,"") -- 35

add_tier_item("Random Delightful Weapon",5,"tier",9611,"") -- 36

add_tier_item("Random Hazy Weapon",5,"tier",9613,"") -- 37

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 38

add_tier_item("Random Blistering Weapon",4,"tier",9606,"") -- 39

add_tier_item("Veteran Soldier Model",5,"models/player/clopsy.mdl",46,"") -- 40

add_tier_item("Random August Weapon",6,"tier",9617,"glow") -- 41

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 42

add_tier_item("Random Tropical Weapon",5,"tier",9619, "") -- 43

add_tier_item("Random Refreshing Weapon",5,"tier",9610,"") -- 44

add_tier_item("5x Random Crates",6,"crates",-3,"") -- 45

add_tier_item("Random Poolside Weapon",4,"tier",9609,"") -- 46

add_tier_item("Random Breezy Weapon",5,"tier",9607,"") -- 47

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 48

add_tier_item("Random Sunburnt Weapon",5,"tier",9615,"") -- 49

add_tier_item("Random Splashing Weapon",5,"tier",9601,"") -- 50

add_tier_item("Random September Weapon",6,"tier",9618,"glow") -- 51

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 52

add_tier_item("Random Refreshing Weapon",5,"tier",9610,"") -- 53

add_tier_item("Random Ripe Weapon",4,"tier",9614,"") -- 54

add_tier_item("10x Random Crates",6,"crates",-4,"") -- 55

add_tier_item("Random Tropical Weapon",5,"tier",9619, "") -- 56

add_tier_item("Random Outdoor Weapon",5,"tier",9620,"") -- 57

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 58

add_tier_item("Random Blazing Weapon",5,"tier",9605,"") -- 59

add_tier_item("Random Fun Weapon",4,"tier",9603,"") -- 60

add_tier_item("Stormtrooper Model",5,"models/player/stormtrooper.mdl",53,"") -- 61

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 62

add_tier_item("Random Breezy Weapon",5,"tier",9607,"") -- 63

add_tier_item("Random Poolside Weapon",4,"tier",9609,"") -- 64

add_tier_item("10x Random Crates",6,"crates",-4,"") -- 65

add_tier_item("Random Outdoor Weapon",5,"tier",9620,"") -- 66

add_tier_item("Random Blistering Weapon",4,"tier",9606,"") -- 67

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 68

add_tier_item("Random Tropical Weapon",5,"tier",9619, "") -- 69

add_tier_item("Random Humid Weapon",4,"tier",9621,"") -- 70

add_tier_item("Random Refreshing Weapon",5,"tier",9610,"") -- 71

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 72

add_tier_item("Random Sunburnt Weapon",5,"tier",9615,"") -- 73

add_tier_item("Random Splashing Weapon",5,"tier",9601,"") -- 74

add_tier_item("10x Random Crates",6,"crates",-4,"") -- 75

add_tier_item("Random Beach Weapon",5,"tier",9604,"") -- 76

add_tier_item("Random Poolside Weapon",4,"tier",9609,"") -- 77

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 78

add_tier_item("Random Delightful Weapon",5,"tier",9611,"") -- 79

add_tier_item("Random Fun Weapon",4,"tier",9603,"") -- 80

add_tier_item("Ash Ketchum Model",6,"models/player/red.mdl",50,"") -- level 81

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 82

add_tier_item("Random Breezy Weapon",5,"tier",9607,"") -- 83

add_tier_item("Random Tropical Weapon",5,"tier",9619, "") -- 84

add_tier_item("10x Random Crates",6,"crates",-4,"") -- 85

add_tier_item("Random Outdoor Weapon",5,"tier",9620,"") -- 86

add_tier_item("Random Blazing Weapon",5,"tier",9605,"") -- 87

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 88

add_tier_item("Random Hazy Weapon",5,"tier",9613,"") -- 89

add_tier_item("Random Humid Weapon",4,"tier",9621,"") -- 90

add_tier_item("Random Scorching Weapon",6,"tier",9612,"fire") -- 91

add_tier_item("10,000 Inventory Credits",8,"https://i.imgur.com/cGxlQEx.png",-2,"bounce") -- Level 92

add_tier_item("Random Outdoor Weapon",5,"tier",9620,"") -- 93





add_tier_item("10x Random Crates",6,"crates",-4,"") -- 95

add_tier_item("Zelda Model",7,"models/player/zelda.mdl",49,"") -- 96

add_tier_item("Random Tropical Weapon",5,"tier",9619, "") -- 97

--non-filler
add_tier_item("Non-filler item",7,"tier",-4) -- 98






--non-filler
add_tier_item("Tier 100 besti tem non-filler",7,"tier",-4) -- 100

print(#MOAT_BP.tiers .. " tiers")

-- for i = #MOAT_BP.tiers + 1,100 do
--     add_tier_item("Tiers so it doesnt error " .. i,math.random(4,9),"https://i.imgur.com/cGxlQEx.png",-2,"bounce")
-- end


-- Default examples, save on networking
MOAT_BP.AddExample(9602,{c="3862288882",u=9602,w="weapon_zm_sledge",Talents={[1]={Description="Weight is reduced by %s_^.",ID=24,Melee=true,Name="Lightweight",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=-15,min=-5}},NameColor={a=255,b=238,g=238,r=175}},[2]={Description="Damage is increased by %s_^ for every person within %s^ feet, your special teammates add %s_^ instead, up to a maximum of %s_^.",ID=37,Melee=true,Name="Strength In Numbers",NotUnique=true,Tier=2,LevelRequired={max=25,min=15},Modifications={[1]={max=6,min=2},[2]={max=40,min=20},[3]={max=10,min=6},[4]={max=35,min=20}},NameColor={a=255,b=0,g=123,r=181}},[3]={Description="Every second of firing, this gun has a %s_^ chance to freeze the target for %s seconds, slowing their speed by ^%s_ percent, and applying 2 damage every ^%s seconds.",ID=10,Melee=true,Name="Frost",NameEffect="frost",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=75,min=55},[2]={max=10,min=5},[3]={max=50,min=25},[4]={max=8,min=5}},NameColor={a=255,b=255,g=100,r=100}}},item={Collection="Summer Climb Collection",ID=9602,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="June",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.703,d=0.028,f=0.974,k=0.638,l=1,m=0.458,r=0.515,w=0.302,x=0},t={[1]={e=24,l=9,m={[1]=0.93}},[2]={e=37,l=25,m={[1]=0.59,[2]=0.94,[3]=0.54,[4]=0.46}},[3]={e=10,l=29,m={[1]=0.82,[2]=0.42,[3]=0.31,[4]=0.81}}}})
MOAT_BP.AddExample(9601,{c="104930401",u=9601,w="weapon_ttt_scorpion",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="Speed is increased by %s_^ for %s seconds after killing a target.",ID=23,Melee=true,Name="Speedforce",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=15,min=5},[2]={max=15,min=5}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9601,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Splashing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.012,f=0.9,k=0.98,l=1,m=0.543,r=0.761,x=0},t={[1]={e=1,l=5,m={[1]=0.34,[2]=0.76}},[2]={e=23,l=19,m={[1]=0.44,[2]=0.17}}}})
MOAT_BP.AddExample(9603,{c="3131731416",u=9603,w="weapon_ttt_p90",Talents={[1]={Description="Your weapon will do %s_^ more damage if you are under %s health.",ID=21,Melee=true,Name="Desperate Times",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=20,min=5},[2]={max=75,min=25}},NameColor={a=255,b=71,g=99,r=255}},[2]={Description="Kick is reduced by %s_.",ID=2,Melee=false,Name="Stability",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=-20,min=-15}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9603,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Fun",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.816,d=0.227,k=0.072,l=1,m=0.472,x=0},t={[1]={e=21,l=9,m={[1]=0.6,[2]=0.11}},[2]={e=2,l=19,m={[1]=0.45}}}})
MOAT_BP.AddExample(9604,{c="457480034",u=9604,w="weapon_ttt_m16",Talents={[1]={Description="Each hit has a %s_^ chance to pierce armour, dealing extra damage to armoured opponents.",ID=29,Melee=true,Name="Armour Piercing",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=60,min=40}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="After killing a target with this weapon, the magazine has a %s_^ chance to refill completely.",ID=11,Melee=false,Name="Meticulous",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=30,min=10}},NameColor={a=255,b=50,g=127,r=205}}},item={Collection="Summer Climb Collection",ID=9604,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Beach",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={d=0.34,f=0.824,k=0.704,l=1,m=0.155,w=0.675,x=0},t={[1]={e=29,l=6,m={[1]=0.92}},[2]={e=11,l=20,m={[1]=0.09}}}})
MOAT_BP.AddExample(9605,{c="3327769654",u=9605,w="weapon_ttt_p90",Talents={[1]={Description="Limb damage is increased by %s_ when using this weapon.",ID=86,Melee=true,Name="Fracture",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ when more than %s feet from the target.",ID=14,Melee=false,Name="Prepared",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=10,min=5},[2]={max=40,min=25}},NameColor={a=255,b=135,g=171,r=41}}},item={Collection="Summer Climb Collection",ID=9605,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Blazing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.13,d=0.763,f=0.745,l=1,m=0.736,w=0.659,x=0},t={[1]={e=86,l=9,m={[1]=0.1}},[2]={e=14,l=18,m={[1]=0.94,[2]=0.76}}}})
MOAT_BP.AddExample(45,{c="2191016612",u=45,item={Collection="Summer Climb Collection",Description="The Enrichment Center is committed to the well being of all participants.",ID=45,Kind="Model",Model="models/player/aphaztech.mdl",Name="Aperture Containment Model",Rarity=5}})
MOAT_BP.AddExample(9606,{c="2836614285",u=9606,w="weapon_ttt_ak47",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Every second of firing, this gun will fire %s^ explosive rounds dealing %s damage.",ID=87,Melee=false,Name="Explosive",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=1.2,min=0.84},[2]={max=42,min=13.37}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9606,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Blistering",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={d=0.086,f=0.327,k=0.407,l=1,r=0.065,w=0.705,x=0},t={[1]={e=8,l=8,m={[1]=0.37,[2]=0.19}},[2]={e=87,l=18,m={[1]=0.84,[2]=0.87}}}})
MOAT_BP.AddExample(9607,{c="3613393429",u=9607,w="weapon_ttt_vss",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ for every person within %s^ feet, your special teammates add %s_^ instead, up to a maximum of %s_^.",ID=37,Melee=true,Name="Strength In Numbers",NotUnique=true,Tier=2,LevelRequired={max=25,min=15},Modifications={[1]={max=6,min=2},[2]={max=40,min=20},[3]={max=10,min=6},[4]={max=35,min=20}},NameColor={a=255,b=0,g=123,r=181}}},item={Collection="Summer Climb Collection",ID=9607,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Breezy",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.352,d=0.285,f=0.86,k=0.52,l=1,m=0.554,r=0.916,w=0.584,x=0},t={[1]={e=8,l=6,m={[1]=0.26,[2]=0.8}},[2]={e=37,l=25,m={[1]=0.52,[2]=0.33,[3]=0.4,[4]=0.98}}}})
MOAT_BP.AddExample(9608,{c="2493707711",u=9608,w="weapon_ttt_ump45",Talents={[1]={Description="Weight is reduced by %s_^.",ID=24,Melee=true,Name="Lightweight",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=-15,min=-5}},NameColor={a=255,b=238,g=238,r=175}},[2]={Description="Your gun has a %s_^ chance to refill a bullet if you hit someone.",ID=99,Melee=false,Name="Replenish",NameEffect="enchanted",NotUnique=true,Tier=2,LevelRequired={max=19,min=15},Modifications={[1]={max=80,min=40}},NameColor={a=255,b=122,g=255,r=0}},[3]={Description="Each hit has a %s_^ chance to zap the target %s^ times for %s^ damage every %s^ seconds.",ID=9,Melee=true,Name="Tesla",NameEffect="electric",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=10,min=5},[2]={max=10,min=5},[3]={max=5,min=3},[4]={max=6,min=3}},NameColor={a=255,b=255,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9608,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="Fragrant",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.001,d=0.747,f=0.883,k=0.497,l=1,m=0.385,r=0.176,w=0.253,x=0},t={[1]={e=24,l=5,m={[1]=0.83}},[2]={e=99,l=15,m={[1]=0.64}},[3]={e=9,l=27,m={[1]=0.26,[2]=0.21,[3]=0.25,[4]=0.72}}}})
MOAT_BP.AddExample(9610,{c="2315115769",u=9610,w="weapon_ttt_ump45",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Kick is reduced by %s_.",ID=2,Melee=false,Name="Stability",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=-20,min=-15}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9610,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Refreshing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.671,d=0.433,f=0.066,l=1,r=0.172,w=0.609,x=0},t={[1]={e=13,l=5,m={[1]=0.05}},[2]={e=2,l=15,m={[1]=0.31}}}})
MOAT_BP.AddExample(9609,{c="2851309018",u=9609,w="weapon_ttt_peacekeeper",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Players have a %s_^ chance to receive %s ammo after killing a target.",ID=82,Melee=false,Name="Scavenger",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=50,min=20},[2]={max=30,min=5}},NameColor={a=255,b=255,g=102,r=178}}},item={Collection="Summer Climb Collection",ID=9609,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Poolside",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.983,d=0.874,l=1,r=0.262,w=0.689,x=0},t={[1]={e=13,l=10,m={[1]=0.2}},[2]={e=82,l=20,m={[1]=0.55,[2]=0.12}}}})
MOAT_BP.AddExample(9611,{c="3718883446",u=9611,w="weapon_ttt_m16",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Each kill has a %s_^ chance to dissolve the body of the person you killed.",ID=19,Melee=false,Name="Assassin",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=25,min=10}},NameColor={a=255,b=255,g=50,r=50}}},item={Collection="Summer Climb Collection",ID=9611,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Delightful",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.663,d=0.374,f=0.363,l=1,r=0.459,w=0.504,x=0},t={[1]={e=13,l=10,m={[1]=0.42}},[2]={e=19,l=19,m={[1]=0.76}}}})
MOAT_BP.AddExample(9613,{c="3028633621",u=9613,w="weapon_thompson",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Max ammo capacity is increased by %s_.",ID=7,Melee=false,Name="Extended Mag",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9613,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Hazy",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.672,d=0.569,l=1,m=0.593,r=0.547,w=0.662,x=0},t={[1]={e=13,l=6,m={[1]=0.14}},[2]={e=7,l=16,m={[1]=0.62}}}})
MOAT_BP.AddExample(9614,{c="1800622355",u=9614,w="weapon_ttt_m1014",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ for every person within %s^ feet, your special teammates add %s_^ instead, up to a maximum of %s_^.",ID=37,Melee=true,Name="Strength In Numbers",NotUnique=true,Tier=2,LevelRequired={max=25,min=15},Modifications={[1]={max=6,min=2},[2]={max=40,min=20},[3]={max=10,min=6},[4]={max=35,min=20}},NameColor={a=255,b=0,g=123,r=181}}},item={Collection="Summer Climb Collection",ID=9614,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Ripe",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.809,d=0.897,f=0.474,k=0.907,l=1,m=0.986,r=0.618,x=0},t={[1]={e=8,l=8,m={[1]=0.8,[2]=0.29}},[2]={e=37,l=17,m={[1]=0.56,[2]=0.23,[3]=0.85,[4]=1}}}})
MOAT_BP.AddExample(9615,{c="4218953909",u=9615,w="weapon_ttt_m03a3",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="Kick is reduced by %s_.",ID=2,Melee=false,Name="Stability",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=-20,min=-15}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9615,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Sunburnt",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.816,f=0.187,k=0.905,l=1,m=0.716,w=0.905,x=0},t={[1]={e=1,l=6,m={[1]=0.55,[2]=0.02}},[2]={e=2,l=19,m={[1]=0.81}}}})
MOAT_BP.AddExample(9612,{c="1865709706",u=9612,w="weapon_ttt_m1014",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="After killing a player, you have a %s_^ chance to receive a %s_^ damage reduction for %s^ seconds.",ID=26,Melee=true,Name="Fortified",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=80,min=50},[2]={max=10,min=5},[3]={max=20,min=5}},NameColor={a=255,b=200,g=200,r=200}},[3]={Description="Players have a %s_^ chance to be pulled with %sx force when shot with this weapon.",ID=17,Melee=true,Name="Tug Of War",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=15,min=5},[2]={max=100,min=10}},NameColor={a=255,b=200,g=200,r=200}}},item={Collection="Summer Climb Collection",ID=9612,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="Scorching",NameEffect="fire",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.031,d=0.773,f=0.148,k=0.462,l=1,m=0.475,r=0.147,w=0.956,x=0},t={[1]={e=1,l=7,m={[1]=0.82,[2]=0.03}},[2]={e=26,l=16,m={[1]=0.43,[2]=0.88,[3]=0.37}},[3]={e=17,l=28,m={[1]=0.86,[2]=0.22}}}})
MOAT_BP.AddExample(9605,{c="4077411077",u=9605,w="weapon_ttt_vss",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Players have a %s_^ chance to receive %s ammo after killing a target.",ID=82,Melee=false,Name="Scavenger",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=50,min=20},[2]={max=30,min=5}},NameColor={a=255,b=255,g=102,r=178}}},item={Collection="Summer Climb Collection",ID=9605,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Blazing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.394,k=0.845,l=1,m=0.589,r=0.542,w=0.726,x=0},t={[1]={e=13,l=10,m={[1]=0.64}},[2]={e=82,l=16,m={[1]=0.33,[2]=0.35}}}})
MOAT_BP.AddExample(9604,{c="2884233277",u=9604,w="weapon_ttt_peacekeeper",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Your gun has a %s_^ chance to refill a bullet if you hit someone.",ID=99,Melee=false,Name="Replenish",NameEffect="enchanted",NotUnique=true,Tier=2,LevelRequired={max=19,min=15},Modifications={[1]={max=80,min=40}},NameColor={a=255,b=122,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9604,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Beach",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={d=0.712,f=0.378,l=1,m=0.785,r=0.227,w=0.157,x=0},t={[1]={e=13,l=6,m={[1]=0.49}},[2]={e=99,l=18,m={[1]=0.63}}}})
MOAT_BP.AddExample(9603,{c="4246794179",u=9603,w="weapon_ttt_ump45",Talents={[1]={Description="Firerate is increased by %s_.",ID=13,Melee=true,Name="Trigger Finger",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=7.99}},NameColor={a=255,b=153,g=51,r=255}},[2]={Description="Max ammo capacity is increased by %s_.",ID=7,Melee=false,Name="Extended Mag",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9603,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Fun",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.548,d=0.221,k=0.542,l=1,m=0.221,r=0.545,x=0},t={[1]={e=13,l=8,m={[1]=0.48}},[2]={e=7,l=15,m={[1]=0.95}}}})
MOAT_BP.AddExample(9601,{c="1654683646",u=9601,w="weapon_ttt_sg552",Talents={[1]={Description="Each bullet has a 20_ chance to do %s_^ more damage.",ID=12,Melee=false,Name="Provident",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=15}},NameColor={a=255,b=181,g=123,r=0}},[2]={Description="Killing a target increases your health by %s_ if not max health.",ID=5,Melee=true,Name="Sustained",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=150,r=0}}},item={Collection="Summer Climb Collection",ID=9601,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Splashing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.515,f=0.055,k=0.893,l=1,m=0.167,r=0.283,w=0.761,x=0},t={[1]={e=12,l=10,m={[1]=0.19}},[2]={e=5,l=16,m={[1]=0.74}}}})
MOAT_BP.AddExample(9607,{c="2894628079",u=9607,w="weapon_ttt_m16",Talents={[1]={Description="Limb damage is increased by %s_ when using this weapon.",ID=86,Melee=true,Name="Fracture",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="While wielding this weapon, you will gain 1 health every %s second(s).",ID=22,Melee=true,Name="Medicality",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=3,min=1}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9607,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Breezy",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.293,f=0.703,k=0.678,l=1,m=0.615,r=0.499,x=0},t={[1]={e=86,l=9,m={[1]=0.92}},[2]={e=22,l=16,m={[1]=0.71}}}})
MOAT_BP.AddExample(9609,{c="1553888683",u=9609,w="weapon_ttt_ump45",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="Your gun has a %s_^ chance to refill a bullet if you hit someone.",ID=99,Melee=false,Name="Replenish",NameEffect="enchanted",NotUnique=true,Tier=2,LevelRequired={max=19,min=15},Modifications={[1]={max=80,min=40}},NameColor={a=255,b=122,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9609,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Poolside",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.505,f=0.984,l=1,r=0.026,w=0.784,x=0},t={[1]={e=1,l=10,m={[1]=0.67,[2]=0.82}},[2]={e=99,l=19,m={[1]=0.16}}}})
MOAT_BP.AddExample(9610,{c="35236799",u=9610,w="weapon_zm_shotgun",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Each kill has a %s_^ chance to dissolve the body of the person you killed.",ID=19,Melee=false,Name="Assassin",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=25,min=10}},NameColor={a=255,b=255,g=50,r=50}}},item={Collection="Summer Climb Collection",ID=9610,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Refreshing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={f=0.503,k=0.655,l=1,m=0.349,r=0.148,w=0.781,x=0},t={[1]={e=8,l=5,m={[1]=0.62,[2]=0.95}},[2]={e=19,l=19,m={[1]=0.92}}}})
MOAT_BP.AddExample(9616,{c="4171052434",u=9616,w="weapon_ttt_aug",Talents={[1]={Description="Torso damage is increased by %s_ when using this weapon.",ID=85,Melee=true,Name="Center Mass",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Kick is reduced by %s_.",ID=2,Melee=false,Name="Stability",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=-20,min=-15}},NameColor={a=255,b=0,g=255,r=0}},[3]={Description="Each hit has a %s_^ chance to infect and damage the target %s^ times for %s^ damage every %s^ seconds.",ID=20,Melee=true,Name="Contagious",NameEffect="glow",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=10,min=5},[2]={max=10,min=5},[3]={max=5,min=3},[4]={max=6,min=3}},NameColor={a=255,b=0,g=150,r=0}}},item={Collection="Summer Climb Collection",ID=9616,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="July",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.264,d=0.446,f=0.925,k=0.284,l=1,m=0.097,r=0.012,w=0.885,x=0},t={[1]={e=85,l=10,m={[1]=0.68}},[2]={e=2,l=20,m={[1]=0.97}},[3]={e=20,l=30,m={[1]=0.82,[2]=0.99,[3]=0.64,[4]=0.76}}}})
MOAT_BP.AddExample(9604,{c="2245248973",u=9604,w="weapon_ttt_msbs",Talents={[1]={Description="Torso damage is increased by %s_ when using this weapon.",ID=85,Melee=true,Name="Center Mass",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ when more than %s feet from the target.",ID=14,Melee=false,Name="Prepared",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=10,min=5},[2]={max=40,min=25}},NameColor={a=255,b=135,g=171,r=41}}},item={Collection="Summer Climb Collection",ID=9604,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Beach",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.948,f=0.392,l=1,m=0.353,r=0.104,w=0.576,x=0},t={[1]={e=85,l=10,m={[1]=0.22}},[2]={e=14,l=20,m={[1]=0.62,[2]=0.52}}}})
MOAT_BP.AddExample(9605,{c="3630997520",u=9605,w="weapon_ttt_m03a3",Talents={[1]={Description="Each hit has a %s_^ chance to pierce armour, dealing extra damage to armoured opponents.",ID=29,Melee=true,Name="Armour Piercing",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=60,min=40}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Max ammo capacity is increased by %s_.",ID=7,Melee=false,Name="Extended Mag",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9605,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Blazing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.991,f=0.776,k=0.433,l=1,m=0.196,r=0.582,x=0},t={[1]={e=29,l=6,m={[1]=0.03}},[2]={e=7,l=19,m={[1]=0.51}}}})
MOAT_BP.AddExample(9611,{c="1730661512",u=9611,w="weapon_ttt_glock",Talents={[1]={Description="Limb damage is increased by %s_ when using this weapon.",ID=86,Melee=true,Name="Fracture",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Kick is reduced by %s_.",ID=2,Melee=false,Name="Stability",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=-20,min=-15}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9611,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Delightful",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.486,d=0.516,f=0.16,l=1,m=0.505,w=0.548,x=0},t={[1]={e=86,l=5,m={[1]=0.38}},[2]={e=2,l=15,m={[1]=0.86}}}})
MOAT_BP.AddExample(9613,{c="1362717881",u=9613,w="weapon_zm_mac10",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Each hit has a %s_^ chance to mark your target for your teammates to see through walls for %s seconds.",ID=27,Melee=true,Name="Mark",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=8,min=3}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9613,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Hazy",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.559,d=0.956,l=1,m=0.536,r=0.651,w=0.728,x=0},t={[1]={e=8,l=9,m={[1]=0.36,[2]=0.9}},[2]={e=27,l=15,m={[1]=0.58,[2]=0.32}}}})
MOAT_BP.AddExample(9606,{c="2271108833",u=9606,w="weapon_zm_mac10",Talents={[1]={Description="Each bullet has a 20_ chance to do %s_^ more damage.",ID=12,Melee=false,Name="Provident",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=15}},NameColor={a=255,b=181,g=123,r=0}},[2]={Description="Every second of firing, this gun will fire %s^ explosive rounds dealing %s damage.",ID=87,Melee=false,Name="Explosive",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=1.2,min=0.84},[2]={max=42,min=13.37}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9606,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Blistering",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={d=0.118,f=0.261,k=0.559,l=1,m=0.064,r=0.027,x=0},t={[1]={e=12,l=8,m={[1]=0.53}},[2]={e=87,l=16,m={[1]=0.44,[2]=0.72}}}})
MOAT_BP.AddExample(46,{c="892379535",u=46,item={Collection="Summer Climb Collection",Description="He's seen some stuff.",ID=46,Kind="Model",Model="models/player/clopsy.mdl",Name="Veteran Soldier Model",Rarity=5}})
MOAT_BP.AddExample(9617,{c="2381457418",u=9617,w="weapon_ttt_ump45",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Killing a target regenerates %s_^ health over %s seconds.",ID=88,Melee=true,Name="Predatory",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=35,min=10},[2]={max=35,min=10}},NameColor={a=255,b=128,g=255,r=0}},[3]={Description="Each hit has a %s_^ chance to ignite the target for %s seconds and apply 1 damage every 0.2 seconds.",ID=3,Melee=true,Name="Inferno",NameEffect="fire",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=10,min=5},[2]={max=8,min=4}},NameColor={a=255,b=0,g=0,r=255}}},item={Collection="Summer Climb Collection",ID=9617,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="August",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.471,d=0.426,f=0.731,k=0.177,l=1,m=0.168,r=0.191,w=0.877,x=0},t={[1]={e=8,l=9,m={[1]=0.39,[2]=0.83}},[2]={e=88,l=16,m={[1]=0.28,[2]=0.27}},[3]={e=3,l=26,m={[1]=0.3,[2]=0}}}})
MOAT_BP.AddExample(9609,{c="2066403887",u=9609,w="weapon_ttt_shotgun",Talents={[1]={Description="Torso damage is increased by %s_ when using this weapon.",ID=85,Melee=true,Name="Center Mass",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Each kill has a %s_^ chance to dissolve the body of the person you killed.",ID=19,Melee=false,Name="Assassin",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=25,min=10}},NameColor={a=255,b=255,g=50,r=50}}},item={Collection="Summer Climb Collection",ID=9609,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Poolside",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.648,f=0.697,k=0.093,l=1,m=0.709,w=0.212,x=0},t={[1]={e=85,l=7,m={[1]=0.85}},[2]={e=19,l=17,m={[1]=0.91}}}})
MOAT_BP.AddExample(9607,{c="4102942445",u=9607,w="weapon_ttt_vss",Talents={[1]={Description="Headshot damage is increased by %s_ when using this weapon.",ID=6,Melee=true,Name="Brutal",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=25,min=11}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ for every person within %s^ feet, your special teammates add %s_^ instead, up to a maximum of %s_^.",ID=37,Melee=true,Name="Strength In Numbers",NotUnique=true,Tier=2,LevelRequired={max=25,min=15},Modifications={[1]={max=6,min=2},[2]={max=40,min=20},[3]={max=10,min=6},[4]={max=35,min=20}},NameColor={a=255,b=0,g=123,r=181}}},item={Collection="Summer Climb Collection",ID=9607,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Breezy",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.872,d=0.742,f=0.175,k=0.69,l=1,m=0.342,r=0.726,w=0.906,x=0},t={[1]={e=6,l=7,m={[1]=0.3}},[2]={e=37,l=17,m={[1]=0.25,[2]=0.88,[3]=0.34,[4]=0.3}}}})
MOAT_BP.AddExample(9615,{c="1883894073",u=9615,w="weapon_zm_revolver",Talents={[1]={Description="Your weapon will do %s_^ more damage if you are under %s health.",ID=21,Melee=true,Name="Desperate Times",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=20,min=5},[2]={max=75,min=25}},NameColor={a=255,b=71,g=99,r=255}},[2]={Description="After killing a player, you have a %s_^ chance to see players within %s^ feet through walls for %s seconds.",ID=81,Melee=true,Name="Visionary",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=100,min=10},[3]={max=10,min=3}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9615,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Sunburnt",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.868,d=0.261,f=0.529,l=1,r=0.556,w=0.785,x=0},t={[1]={e=21,l=10,m={[1]=0.87,[2]=0.44}},[2]={e=81,l=19,m={[1]=1,[2]=0.89,[3]=0.82}}}})
MOAT_BP.AddExample(9601,{c="883420605",u=9601,w="weapon_zm_revolver",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="While wielding this weapon, you will gain 1 health every %s second(s).",ID=22,Melee=true,Name="Medicality",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=3,min=1}},NameColor={a=255,b=0,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9601,Kind="tier",MaxStats=7,MaxTalents=2,MinStats=5,MinTalents=2,Name="Splashing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.859,d=0.933,f=0.218,k=0.499,l=1,r=0.585,w=0.928,x=0},t={[1]={e=1,l=10,m={[1]=0.16,[2]=0.97}},[2]={e=22,l=18,m={[1]=0.5}}}})
MOAT_BP.AddExample(9618,{c="1555762359",u=9618,w="weapon_ttt_galil",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="After killing a player, you have a %s_^ chance to see players within %s^ feet through walls for %s seconds.",ID=81,Melee=true,Name="Visionary",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=100,min=10},[3]={max=10,min=3}},NameColor={a=255,b=0,g=255,r=255}},[3]={Description="Players have a %s_^ chance to be thrown with %sx force when shot with this weapon.",ID=83,Melee=true,Name="Dragonborn",NotUnique=true,Tier=3,LevelRequired={max=30,min=25},Modifications={[1]={max=15,min=5},[2]={max=100,min=10}},NameColor={a=255,b=255,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9618,Kind="tier",MaxStats=7,MaxTalents=3,MinStats=6,MinTalents=2,Name="September",Rarity=6,Stats={Accuracy={max=23,min=14},Damage={max=23,min=14},Firerate={max=23,min=14},Kick={max=-23,min=-14},Magazine={max=28,min=19},Range={max=28,min=19},Weight={max=-7,min=-4}},Talents={[1]="random",[2]="random",[3]="random"}},s={a=0.984,d=0.384,f=0.779,k=0.871,l=1,m=0.132,r=0.976,w=0.923,x=0},t={[1]={e=8,l=10,m={[1]=0.05,[2]=0.46}},[2]={e=81,l=16,m={[1]=0.48,[2]=0.31,[3]=0.65}},[3]={e=83,l=29,m={[1]=0.07,[2]=0.03}}}})
MOAT_BP.AddExample(9610,{c="315563295",u=9610,w="weapon_ttt_shotgun",Talents={[1]={Description="Limb damage is increased by %s_ when using this weapon.",ID=86,Melee=true,Name="Fracture",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Damage is increased by %s_^ for every person within %s^ feet, your special teammates add %s_^ instead, up to a maximum of %s_^.",ID=37,Melee=true,Name="Strength In Numbers",NotUnique=true,Tier=2,LevelRequired={max=25,min=15},Modifications={[1]={max=6,min=2},[2]={max=40,min=20},[3]={max=10,min=6},[4]={max=35,min=20}},NameColor={a=255,b=0,g=123,r=181}}},item={Collection="Summer Climb Collection",ID=9610,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Refreshing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={f=0.772,k=0.382,l=1,m=0.232,r=0.745,w=0.184,x=0},t={[1]={e=86,l=6,m={[1]=0.9}},[2]={e=37,l=20,m={[1]=0.29,[2]=0.11,[3]=0.8,[4]=0.24}}}})
MOAT_BP.AddExample(9614,{c="3296723702",u=9614,w="weapon_ttt_galil",Talents={[1]={Description="Every shot is silenced.",ID=9040,Melee=false,Name="Silenced",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=200,min=100}},NameColor={a=255,b=0,g=255,r=0}},[2]={Description="Killing a target increases your health by %s_ if not max health.",ID=5,Melee=true,Name="Sustained",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=150,r=0}}},item={Collection="Summer Climb Collection",ID=9614,Kind="tier",MaxStats=6,MaxTalents=2,MinStats=4,MinTalents=1,Name="Ripe",Rarity=4,Stats={Accuracy={max=15,min=8},Damage={max=15,min=8},Firerate={max=15,min=8},Kick={max=-15,min=-8},Magazine={max=20,min=13},Range={max=20,min=13},Weight={max=-5,min=-2}},Talents={[1]="random",[2]="random"}},s={a=0.387,d=0.013,f=0.222,k=0.171,l=1,m=0.153,w=0.977,x=0},t={[1]={e=9040,l=8,m={[1]=0.95}},[2]={e=5,l=20,m={[1]=0.29}}}})
MOAT_BP.AddExample(9619,{c="770516967",u=9619,w="weapon_ttt_p90",Talents={[1]={Description="Limb damage is increased by %s_ when using this weapon.",ID=86,Melee=true,Name="Fracture",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=30,min=15}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Max ammo capacity is increased by %s_.",ID=7,Melee=false,Name="Extended Mag",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=15}},NameColor={a=255,b=0,g=128,r=255}}},item={Collection="Summer Climb Collection",ID=9619,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Tropical",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.468,f=0.531,k=0.886,l=1,m=0.638,r=0.935,x=0},t={[1]={e=86,l=9,m={[1]=0.15}},[2]={e=7,l=18,m={[1]=0.7}}}})
MOAT_BP.AddExample(9620,{c="128396621",u=9620,w="weapon_ttt_dual_elites",Talents={[1]={Description="Each hit has a %s_^ chance to pierce armour, dealing extra damage to armoured opponents.",ID=29,Melee=true,Name="Armour Piercing",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=60,min=40}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Each kill has a %s_^ chance to dissolve the body of the person you killed.",ID=19,Melee=false,Name="Assassin",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=25,min=10}},NameColor={a=255,b=255,g=50,r=50}}},item={Collection="Summer Climb Collection",ID=9620,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Outdoor",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.407,d=0.466,f=0.166,k=0.183,l=1,r=0.304,x=0},t={[1]={e=29,l=10,m={[1]=0.87}},[2]={e=19,l=15,m={[1]=0.97}}}})
MOAT_BP.AddExample(9605,{c="2046550562",u=9605,w="weapon_ttt_m1014",Talents={[1]={Description="Every shot is silenced.",ID=9040,Melee=false,Name="Silenced",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=200,min=100}},NameColor={a=255,b=0,g=255,r=0}},[2]={Description="Killing a target regenerates %s_^ health over %s seconds.",ID=88,Melee=true,Name="Predatory",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=35,min=10},[2]={max=35,min=10}},NameColor={a=255,b=128,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9605,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Blazing",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.63,d=0.603,k=0.828,l=1,m=0.865,r=0.177,x=0},t={[1]={e=9040,l=7,m={[1]=0.48}},[2]={e=88,l=17,m={[1]=0.29,[2]=0.71}}}})
MOAT_BP.AddExample(53,{c="2579624474",u=53,item={Collection="Summer Climb Collection",Description="Victory is written in the stars.",ID=53,Kind="Model",Model="models/player/stormtrooper.mdl",Name="Stormtrooper Model",Rarity=5}})
MOAT_BP.AddExample(9620,{c="878065670",u=9620,w="weapon_ttt_mp5",Talents={[1]={Description="Damage is increased by %s_^ for %s seconds after killing with this weapon.",ID=8,Melee=true,Name="Adrenaline Rush",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=15,min=5},[2]={max=12,min=9}},NameColor={a=255,b=0,g=0,r=255}},[2]={Description="Each hit has a %s_^ chance to mark your target for your teammates to see through walls for %s seconds.",ID=27,Melee=true,Name="Mark",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=8,min=3}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9620,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Outdoor",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.379,d=0.673,f=0.045,k=0.112,l=1,r=0.151,x=0},t={[1]={e=8,l=10,m={[1]=0.25,[2]=0.42}},[2]={e=27,l=20,m={[1]=0.9,[2]=0.8}}}})
MOAT_BP.AddExample(9619,{c="464990703",u=9619,w="weapon_ttt_p90",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="Damage is increased by %s_^ when more than %s feet from the target.",ID=14,Melee=false,Name="Prepared",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=10,min=5},[2]={max=40,min=25}},NameColor={a=255,b=135,g=171,r=41}}},item={Collection="Summer Climb Collection",ID=9619,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Tropical",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.9,f=0.641,k=0.319,l=1,m=0.811,w=0.061,x=0},t={[1]={e=1,l=6,m={[1]=0.14,[2]=0.99}},[2]={e=14,l=17,m={[1]=0.97,[2]=0.3}}}})
MOAT_BP.AddExample(50,{c="77892942",u=50,item={Collection="Summer Climb Collection",Description="Gotta catch em all.",ID=50,Kind="Model",Model="models/player/red.mdl",Name="Ash Ketchum Model",Rarity=6}})
MOAT_BP.AddExample(9620,{c="10613622",u=9620,w="weapon_ttt_aug",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="Your gun has a %s_^ chance to refill a bullet if you hit someone.",ID=99,Melee=false,Name="Replenish",NameEffect="enchanted",NotUnique=true,Tier=2,LevelRequired={max=19,min=15},Modifications={[1]={max=80,min=40}},NameColor={a=255,b=122,g=255,r=0}}},item={Collection="Summer Climb Collection",ID=9620,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Outdoor",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.364,d=0.784,f=0.141,k=0.632,l=1,r=0.411,x=0},t={[1]={e=1,l=8,m={[1]=0.7,[2]=0.94}},[2]={e=99,l=18,m={[1]=0.84}}}})
MOAT_BP.AddExample(9620,{c="932775786",u=9620,w="weapon_ttt_vss",Talents={[1]={Description="Damage is increased by +%s_^ when closer than %s feet to the target.",ID=1,Melee=false,Name="Close Quarters",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=10,min=5},[2]={max=13,min=8}},NameColor={a=255,b=255,g=255,r=0}},[2]={Description="After killing a player, you have a %s_^ chance to see players within %s^ feet through walls for %s seconds.",ID=81,Melee=true,Name="Visionary",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=100,min=10},[3]={max=10,min=3}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9620,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Outdoor",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={a=0.836,d=0.528,k=0.592,l=1,m=0.686,w=0.226,x=0},t={[1]={e=1,l=6,m={[1]=0.41,[2]=0.73}},[2]={e=81,l=20,m={[1]=0.08,[2]=0.22,[3]=0.9}}}})
MOAT_BP.AddExample(49,{c="3373299767",u=49,item={Collection="Summer Climb Collection",Description="It's dangerous to go alone! Take this... model.",ID=49,Kind="Model",Model="models/player/zelda.mdl",Name="Zelda Model",Rarity=6}})
MOAT_BP.AddExample(9619,{c="3595127254",u=9619,w="weapon_zm_mac10",Talents={[1]={Description="Weight is reduced by %s_^.",ID=24,Melee=true,Name="Lightweight",NotUnique=true,Tier=1,LevelRequired={max=10,min=5},Modifications={[1]={max=-15,min=-5}},NameColor={a=255,b=238,g=238,r=175}},[2]={Description="After killing a player, you have a %s_^ chance to see players within %s^ feet through walls for %s seconds.",ID=81,Melee=true,Name="Visionary",NotUnique=true,Tier=2,LevelRequired={max=20,min=15},Modifications={[1]={max=40,min=10},[2]={max=100,min=10},[3]={max=10,min=3}},NameColor={a=255,b=0,g=255,r=255}}},item={Collection="Summer Climb Collection",ID=9619,Kind="tier",MaxStats=5,MaxTalents=2,MinStats=5,MinTalents=2,Name="Tropical",Rarity=5,Stats={Accuracy={max=19,min=11},Damage={max=19,min=11},Firerate={max=19,min=11},Kick={max=-19,min=-11},Magazine={max=24,min=16},Range={max=24,min=16},Weight={max=-7,min=-3}},Talents={[1]="random",[2]="random"}},s={d=0.322,k=0.053,l=1,m=0.258,r=0.835,w=0.76,x=0},t={[1]={e=24,l=8,m={[1]=0.05}},[2]={e=81,l=16,m={[1]=0.09,[2]=0.2,[3]=0.97}}}})
