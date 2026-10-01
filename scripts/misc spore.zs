import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;

craftingTable.addShaped("tendons_to_string", <item:minecraft:string>, [[<item:spore:tendons>]]);


craftingTable.remove(<item:spore:compound_plate>);
Replacer.create().replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>,<item:spore:compound_plate>,<item:create:iron_sheet>).execute();

//Stairs
craftingTable.addShaped("decayed_stairs", <item:spore:rotten_stair>*4, [[<item:spore:rotten_planks>, <item:minecraft:air>, <item:minecraft:air>], [<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:minecraft:air>],
[<item:spore:rotten_planks>, <item:spore:rotten_planks>, <item:spore:rotten_planks>]]);

<tag:item:minecraft:stairs>.add(<item:spore:rotten_stair>);
<tag:item:minecraft:wooden_stairs>.add(<item:spore:rotten_stair>);

<tag:block:minecraft:stairs>.add(<block:spore:rotten_stair>);
<tag:block:minecraft:wooden_stairs>.add(<block:spore:rotten_stair>);

craftingTable.addShaped("bcu", <item:spore:container> * 2, [[<item:create:iron_sheet>, <item:create:iron_sheet>, <item:create:iron_sheet>], [<item:minecraft:glass>, <item:minecraft:air>, <item:minecraft:glass>], [<item:create:iron_sheet>, <item:create:iron_sheet>, <item:create:iron_sheet>]]);

//Lab blocks recipe buff
craftingTable.remove(<item:spore:lab_block>);

craftingTable.addShaped("lab_blocks", <item:spore:lab_block> * 32, [[<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>], [<item:create:iron_sheet>, <item:minecraft:air>, <item:create:iron_sheet>], [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);

//Milky Sack
<recipetype:create:mixing>.addJsonRecipe("milk_mixing", {type: "create:mixing", results: [{id: "minecraft:milk", amount: 250}], ingredients: [{item: "spore:milky_sack"}]});
<recipetype:create:filling>.addJsonRecipe("create/filling/milk", {type: "create:filling", results: [{id: "spore:milky_sack"}], ingredients: [{item: "spore:alveolic_sack"}, {type: "neoforge:single", fluid: "minecraft:milk", amount: 250}]});

//Vial
craftingTable.addShapeless("bile_vial", <item:spore:bile_vial>*3, [<item:spore:crusted_bile>, <item:minecraft:glass_bottle>, <item:minecraft:glass_bottle>,<item:minecraft:glass_bottle>,]);

//Gas Mask
craftingTable.remove(<item:spore:gas_mask>);
craftingTable.addShaped("gas_mask", <item:spore:gas_mask>, [[<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>], [<item:minecraft:iron_nugget>, <item:minecraft:glass_pane>,<item:minecraft:iron_nugget>], [<tag:item:minecraft:wool>,<item:create:iron_sheet>,<tag:item:minecraft:wool>]]);