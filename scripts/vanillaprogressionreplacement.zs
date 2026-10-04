import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;

//Wood
<tag:item:minecraft:logs>.add(<item:spore:rotten_log>);
<tag:item:minecraft:logs_that_burn>.add(<item:spore:rotten_log>);
craftingTable.addShaped("rotten_logs", <item:spore:rotten_log>, [[<item:spore:biomass>,<item:spore:biomass>], [<item:spore:biomass>,<item:spore:biomass>]]);

<tag:item:minecraft:planks>.add(<item:spore:rotten_planks>);
<tag:item:create:pulpifiable>.add(<item:minecraft:stick>);
craftingTable.addShaped("rotten_planks", <item:spore:rotten_planks>*4, [[<item:spore:rotten_log>]]);

craftingTable.addShaped("rotten_planks_2", <item:spore:rotten_planks>*4, [[<item:kubejs:stripped_rotten_log>]]);
<tag:item:minecraft:logs>.add(<item:kubejs:stripped_rotten_log>);
<tag:item:minecraft:logs_that_burn>.add(<item:kubejs:stripped_rotten_log>);
<tag:item:c:stripped_logs>.add(<item:kubejs:stripped_rotten_log>);

furnace.remove(<item:minecraft:charcoal>);
furnace.addRecipe("new_charcoal", <item:minecraft:charcoal>*2, <tag:item:minecraft:logs_that_burn>, 0.1, 200);


//Zinc & Andesite
craftingTable.addShaped("new_smooth_stone", <item:minecraft:stone>*4, [[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>],[<item:minecraft:cobblestone>,<item:minecraft:cobblestone>]]);
furnace.remove(<item:minecraft:stone>);
furnace.addRecipe("zinc", <item:create:zinc_nugget>, <item:minecraft:cobblestone>, 0.1, 200);

craftingTable.addShapeless("new_andesite", <item:minecraft:andesite>, [<item:minecraft:cobblestone>, <item:spore:biomass>]);


//Mixing, Pressing, Bile, Slime Balls, Plough, Slab (For Bearing)
craftingTable.remove(<item:create:whisk>);
craftingTable.addShaped("new_whisk", <item:create:whisk>,[[<item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>], [<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>]]);

craftingTable.remove(<item:create:mechanical_press>);
craftingTable.addShaped("create/mechanical_press", <item:create:mechanical_press>, [[<item:create:shaft>], [<item:create:andesite_casing>], [<tag:item:c:storage_blocks/andesite_alloy>]]);

<recipetype:create:mixing>.addJsonRecipe("spore_bile_", {type: "create:mixing", results: [{id: "spore:bile", amount: 100}], ingredients: [{item: "spore:biomass"}]});

<recipetype:create:compacting>.addJsonRecipe("new_slime", {type: "create:compacting", results: [{id: "minecraft:slime_ball"}], ingredients: [{type: "neoforge:single", fluid: "spore:bile", amount: 100}]});

craftingTable.remove(<item:create:mechanical_plough>);
craftingTable.addShaped("create/mechanical_plough", <item:create:mechanical_plough>, [[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>,], [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>]]);

craftingTable.addShaped("rotten_slab", <item:spore:rotten_slab>*6, [[<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>]]);
<tag:item:minecraft:wooden_slabs>.add(<item:spore:rotten_slab>);

//Copper, Super Glue
<recipetype:create:mixing>.addJsonRecipe("new_copper_nugget", {type: "create:mixing", results: [{id: "create:copper_nugget"}], ingredients: [{item: "create:zinc_nugget"}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});

craftingTable.addShaped("create/super_glue_2", <item:create:super_glue>, [[<tag:item:c:slimeballs>, <tag:item:c:plates/copper>], [<tag:item:c:nuggets/copper>, <tag:item:c:slimeballs>]]);


//Scent and Iron
craftingTable.remove(<item:create:spout>);
craftingTable.addShaped("create/spout", <item:create:spout>, [[<item:create:copper_casing>], [<item:create:fluid_pipe>]]);

<recipetype:create:filling>.addJsonRecipe("create/filling/scent", {type: "create:filling", results: [{id: "spore:scent_spawnegg"}], ingredients: [{item: "minecraft:glass_bottle"}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});
<recipetype:create:filling>.addJsonRecipe("create/filling/overcharged_scent", {type: "create:filling", results: [{id: "spore:scent_spawnegg", components: {"minecraft:custom_name": '"Overcharged Scent"', "minecraft:enchantment_glint_override": true, "minecraft:entity_data": {overcharged: 1, id: "spore:scent_spawnegg"}}}], ingredients: [{item: "spore:scent_spawnegg"}, {type: "neoforge:single", fluid: "minecraft:lava", amount: 100}]});

<recipetype:create:milling>.removeByName("create:milling/gravel");
<recipetype:create:milling>.addJsonRecipe("create/milling/gravel_new", {type: "create:milling", processing_time: 150, results: [{id: "minecraft:sand", chance: 0.5}, {id: "minecraft:flint"}], ingredients: [{item: "minecraft:gravel"}]});

<recipetype:create:mixing>.addJsonRecipe("new_iron_nugget", {type: "create:mixing", results: [{id: "minecraft:iron_nugget", count: 2}], ingredients: [{item: "spore:mutated_fiber"}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});
<recipetype:create:mixing>.addJsonRecipe("new_iron_ingot2", {type: "create:mixing", results: [{id: "minecraft:iron_nugget", count: 9}], ingredients: [{item: "spore:mutated_heart"}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});


//Blaze burners and co
<recipetype:create:sandpaper_polishing>.removeByName("create_netherless:coal_rod_recipe");
craftingTable.addShaped("coal_road", <item:create_netherless:coal_rod>*4, [[<item:minecraft:charcoal>], [<item:minecraft:charcoal>]]);

<recipetype:minecraft:blasting>.addRecipe("blaze_rod", <item:minecraft:blaze_rod>, <item:create_netherless:coal_rod>, 0.1, 200);

craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blasting_furnace", <item:minecraft:blast_furnace>, [[<item:minecraft:cobblestone>, <item:create:iron_sheet>, <item:minecraft:cobblestone>],[<item:minecraft:cobblestone>, <item:minecraft:furnace>, <item:minecraft:cobblestone>], [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);

<recipetype:create:mixing>.addJsonRecipe("create/mixing/netherrack", {type: "create:mixing", results: [{id: "minecraft:netherrack"}], ingredients: [{item: "minecraft:blaze_powder"}, {item: "minecraft:cobblestone"}]});

<recipetype:create:mixing>.addJsonRecipe("create/mixing/lava", {type: "create:mixing", results: [{id: "minecraft:lava", amount: 200}], ingredients: [{item: "minecraft:blaze_rod"}]});

//Water & Snow
<recipetype:create:mixing>.addJsonRecipe("create/mixing/water", {type: "create:mixing", heat_requirement: "heated", results: [{id: "minecraft:water", amount: 100}], ingredients: [{type: "neoforge:single", fluid: "spore:bile", amount: 200}]});

<recipetype:create:compacting>.addJsonRecipe("snowball", {type: "create:compacting", results: [{id: "minecraft:snowball"}], ingredients: [{type: "neoforge:single", fluid: "minecraft:water", amount: 100}]});

//Spore human remains drops
<tag:item:sporeblock:human_remains>.add(<item:spore:skull_soup>);
<tag:item:sporeblock:human_remains>.add(<item:spore:decayed_limbs>);
<tag:item:sporeblock:human_remains>.add(<item:spore:decayed_torso>);

//Organoid Membrane & co
<recipetype:create:compacting>.addJsonRecipe("new_paper", {type: "create:compacting", results: [{id: "minecraft:paper", count: 2}], ingredients: [{item: "spore:rotten_planks"}]});

craftingTable.remove(<item:create:rose_quartz>);
<recipetype:create:mixing>.addJsonRecipe("create/mixing/create_rose_quartz", {type: "create:mixing", results: [{id: "create:rose_quartz"}], ingredients: [{item: "spore:organoid_membrane"}, {item: "minecraft:quartz"}]});

<recipetype:create:milling>.addJsonRecipe("create/milling/redstone", {type: "create:milling", processing_time: 150, results: [{id: "minecraft:redstone", count: 8}], ingredients: [{item: "create:rose_quartz"}]});

//Eggs
<recipetype:create:mixing>.addJsonRecipe("normal_egg", {type: "create:mixing", heat_requirement: "heated", results: [{id: "minecraft:egg"}], ingredients: [{item: "spore:biomass"}, {item: "spore:armor_fragment"}, {item: "spore:armor_fragment"}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});
craftingTable.addShaped("moo_egg", <item:minecraft:mooshroom_spawn_egg>, [[<item:spore:organoid_membrane>, <item:spore:organoid_membrane>, <item:spore:organoid_membrane>], [<item:spore:organoid_membrane>,<item:minecraft:egg>,<item:spore:organoid_membrane>],[<item:spore:organoid_membrane>,<item:spore:organoid_membrane>,<item:spore:organoid_membrane>]]);

//Sugar
<recipetype:create:mixing>.addJsonRecipe("new_sugar", {type: "create:mixing", heat_requirement: "heated", results: [{id: "minecraft:sugar"}], ingredients: [{type: "neoforge:single", fluid: "minecraft:milk", amount: 100}, {type: "neoforge:single", fluid: "spore:bile", amount: 100}]});


//Dome
<recipetype:create:mixing>.addJsonRecipe("spore_bile", {type: "create:mixing", results: [{id: "spore:bile", amount: 1000}], ingredients: [{item: "spore:gastric_biomass_block"}]});


//Creative Motor
craftingTable.addShaped("create/mechanical_crafting/creative_motor", <item:create:creative_motor> , [[<item:spore:sicken_biomass_block>, <item:spore:sicken_biomass_block>, <item:spore:sicken_biomass_block>, <item:spore:sicken_biomass_block>, <item:spore:sicken_biomass_block>], [<item:spore:gastric_biomass_block>, <item:spore:gastric_biomass_block>, <item:spore:gastric_biomass_block>, <item:spore:gastric_biomass_block>, <item:spore:gastric_biomass_block>], [<item:spore:calcified_biomass_block>,<item:spore:brain_remnants>,<item:create:brass_ingot>,<item:spore:brain_remnants>,<item:spore:calcified_biomass_block>], [<item:spore:calcified_biomass_block>,<tag:item:spore:amalgamated_biomass>,<item:create:brass_ingot>,<tag:item:spore:amalgamated_biomass>,<item:spore:calcified_biomass_block>], [<item:minecraft:air>,<item:minecraft:air>,<item:create:brass_ingot>,<item:minecraft:air>,<item:minecraft:air>]]);
