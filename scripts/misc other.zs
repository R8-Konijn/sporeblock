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