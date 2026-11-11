craftingTable.remove(<item:mininggadgets:mininggadget_simple>);

craftingTable.addShaped("mininggadgets/mininggadget_simple", <item:mininggadgets:mininggadget_simple>, [[<item:create:brass_ingot>, <tag:item:c:ingots/iron>, <tag:item:c:ingots/gold>], [<item:create:electron_tube>, <item:mininggadgets:upgrade_empty>, <tag:item:c:dusts/redstone>], [<item:create:brass_ingot>, <tag:item:c:ingots/iron>, <tag:item:c:ingots/iron>]]);

//Energy Generator

craftingTable.addShaped("energy_generator", <item:generatorgalore:redstone_generator>, [[<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>],[<item:minecraft:redstone_block>, <item:minecraft:blast_furnace>, <item:minecraft:redstone_block>], [<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>]]);

//Upgrades

craftingTable.remove(<item:mininggadgets:upgrade_empty>);
craftingTable.addShaped("blank_upgrade", <item:mininggadgets:upgrade_empty>, [[<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>], [<item:minecraft:redstone>,<item:create:iron_sheet>,<item:minecraft:redstone>], [<item:minecraft:redstone>,<item:minecraft:redstone>,<item:minecraft:redstone>]]);

craftingTable.remove(<item:mininggadgets:upgrade_light_placer>);
craftingTable.addShaped("light_upgrade", <item:mininggadgets:upgrade_light_placer>, [[<item:minecraft:air>, <item:minecraft:torch>, <item:minecraft:air>], [<item:minecraft:torch>, <item:mininggadgets:upgrade_empty>, <item:minecraft:torch>], [<item:minecraft:air>, <item:minecraft:torch>, <item:minecraft:air>]]);

craftingTable.remove(<item:mininggadgets:upgrade_size_3>);
craftingTable.addShapeless("upgrade_size_1", <item:mininggadgets:upgrade_size_1>, [<item:mininggadgets:upgrade_empty>, <item:onlyhammersandexcavators:iron_hammer>]);
craftingTable.addShapeless("upgrade_size_2", <item:mininggadgets:upgrade_size_2>, [<item:mininggadgets:upgrade_size_1>, <item:onlyhammersandexcavators:obsidian_hammer>]);
craftingTable.addShapeless("upgrade_size_3", <item:mininggadgets:upgrade_size_3>, [<item:mininggadgets:upgrade_size_2>, <item:onlyhammersandexcavators:emerald_hammer>]);

craftingTable.remove(<item:mininggadgets:upgrade_void_junk>);
craftingTable.addShapeless("void_upgrade", <item:mininggadgets:upgrade_void_junk>, [<item:mininggadgets:upgrade_empty>, <item:minecraft:lava_bucket>]);

craftingTable.addShaped("upgrade_range_1", <item:mininggadgets:upgrade_range_1>, [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>,<item:mininggadgets:upgrade_empty>,<item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);
craftingTable.addShaped("upgrade_range_2", <item:mininggadgets:upgrade_range_2>, [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>,<item:mininggadgets:upgrade_range_1>,<item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);
craftingTable.addShaped("upgrade_range_3", <item:mininggadgets:upgrade_range_3>, [[<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>], [<item:minecraft:gold_block>,<item:mininggadgets:upgrade_range_2>,<item:minecraft:gold_block>], [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>]]);