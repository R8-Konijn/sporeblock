import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;

<tag:item:sporeblock:traps>.add(<item:simply_traps:stake_wall>);
<tag:item:sporeblock:traps>.add(<item:simply_traps:stake>);
<tag:item:sporeblock:traps>.add(<item:simply_traps:spike_trap>);
<tag:item:sporeblock:traps>.add(<item:simply_traps:slime_trap>);
<tag:item:sporeblock:traps>.add(<item:simply_traps:circular_barbed_wire_iron>);

craftingTable.addShaped("wooden_door", <item:minecraft:oak_door>*3, [[<item:spore:rotten_planks>, <item:spore:rotten_planks>], [<item:spore:rotten_planks>, <item:spore:rotten_planks>], [<item:spore:rotten_planks>, <item:spore:rotten_planks>]]);

craftingTable.addShaped("wooden_trapdoor", <item:minecraft:oak_trapdoor>*2, [[<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>],[<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>]]);

craftingTable.addShaped("book", <item:patchouli:guide_book>.withJsonComponent(<componenttype:patchouli:book>, "patchouli:for_you"), [[<item:spore:biomass>]]);

craftingTable.remove(<item:minecraft:dried_kelp>);
craftingTable.remove(<item:minecraft:dried_kelp_block>);

Replacer.create().replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>,<item:minecraft:dried_kelp>,<item:minecraft:paper>).execute();
Replacer.create().replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>,<item:minecraft:dried_kelp_block>,<item:minecraft:paper>).execute();

craftingTable.remove(<item:tiab:time_in_a_bottle>);
craftingTable.addShapeless("tiab", <item:tiab:time_in_a_bottle>, [<item:minecraft:glass_bottle>]);

//Wand

craftingTable.remove(<item:constructionwand:core_destruction>);
craftingTable.addShaped("destruction_core", <item:constructionwand:core_destruction>,[[<item:minecraft:air>, <item:spore:calcified_biomass_block>, <item:minecraft:air>], [<item:spore:sicken_biomass_block>, <item:minecraft:iron_pickaxe>, <item:spore:gastric_biomass_block>], [<item:minecraft:air>, <tag:item:spore:amalgamated_biomass>, <item:minecraft:air>]]);

craftingTable.remove(<item:constructionwand:diamond_wand>);
craftingTable.addShaped("brass_wand", <item:constructionwand:diamond_wand>.withJsonComponent(<componenttype:minecraft:custom_data>, {wand_options: {}}), [[<item:minecraft:air>, <item:minecraft:air>, <item:create:brass_ingot>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:air>]]);

craftingTable.remove(<item:constructionwand:infinity_wand>);
craftingTable.addShaped("infinity_wand", <item:constructionwand:infinity_wand>.withJsonComponent(<componenttype:minecraft:custom_data>, {wand_options: {}}), [[<item:minecraft:air>, <item:minecraft:air>, <tag:item:spore:amalgamated_biomass>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:air>]]);

//Plank items
craftingTable.addShaped("minecraft/sign", <item:minecraft:oak_sign> * 3, [[<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>], [<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>], [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>]]);

<recipetype:create:cutting>.addJsonRecipe("create/cutting/runtime_generated/compat/minecraft/oak_planks_to_sign", {type: "create:cutting", processing_time: 50, results: [{id: "minecraft:oak_sign"}], ingredients: [{item: "spore:rotten_planks"}]});

craftingTable.addShaped("minecraft/hanging_sign", <item:minecraft:oak_hanging_sign>*6, [[<item:minecraft:chain>,<item:minecraft:air>,<item:minecraft:chain>],[<item:kubejs:stripped_rotten_log>,<item:kubejs:stripped_rotten_log>,<item:kubejs:stripped_rotten_log>],[<item:kubejs:stripped_rotten_log>,<item:kubejs:stripped_rotten_log>,<item:kubejs:stripped_rotten_log>]]);

craftingTable.addShaped("minecraft/boat", <item:minecraft:oak_boat>, [[<item:spore:rotten_planks>, <item:minecraft:air>, <item:spore:rotten_planks>], [<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>]]);

craftingTable.addShaped("create/oak_window", <item:create:oak_window> * 2, [[<item:minecraft:air>, <item:spore:rotten_planks>, <item:minecraft:air>], [<item:spore:rotten_planks>, <tag:item:c:glass_blocks/colorless>, <item:spore:rotten_planks>]]);

//Glass
furnace.removeByName("create:smelting/glass_from_framed_glass");
furnace.removeByName("create:smelting/glass_from_horizontal_framed_glass");
furnace.removeByName("create:smelting/glass_from_tiled_glass");
furnace.removeByName("create:smelting/glass_from_vertical_framed_glass");