//Wrench
craftingTable.remove(<item:create:wrench>);
craftingTable.addShaped("create/wrench", <item:create:wrench>, [[<tag:item:c:plates/copper>, <tag:item:c:plates/copper>], [<tag:item:c:plates/copper>, <item:create:cogwheel>], [<item:minecraft:air>, <tag:item:c:rods/wooden>]]);

//Goggles
craftingTable.remove(<item:create:goggles>);
craftingTable.addShaped("create/goggles", <item:create:goggles>, [[<item:minecraft:air>, <tag:item:c:strings>, <item:minecraft:air>], [<tag:item:c:glass_blocks>, <tag:item:c:plates/copper>, <tag:item:c:glass_blocks>]]);

//Chute
craftingTable.remove(<item:create:chute>);
craftingTable.addShaped("create/chute", <item:create:chute>, [[<item:create:andesite_alloy>, <item:minecraft:air>, <item:create:andesite_alloy>],[<item:create:andesite_alloy>, <item:minecraft:air>, <item:create:andesite_alloy>],[<item:create:andesite_alloy>, <item:minecraft:air>, <item:create:andesite_alloy>]]);

//Guardian Beam Defense
<recipetype:create:mechanical_crafting>.remove(<item:creategbd:beam_reactor_helmet>);
<recipetype:create:mechanical_crafting>.remove(<item:creategbd:basic_laser_turret>);
<recipetype:create:mechanical_crafting>.remove(<item:creategbd:advanced_laser_turret>);

craftingTable.addShaped("basic_laser_turret", <item:creategbd:basic_laser_turret>, [[<tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>], [<tag:item:c:glass_blocks>, <item:create:electron_tube> ,<tag:item:c:glass_blocks>], [<item:spore:armor_fragment>,<item:create:shaft>,<item:spore:armor_fragment>]]);

craftingTable.addShaped("advanced_laser_turret", <item:creategbd:advanced_laser_turret>, [[<tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>, <tag:item:c:glass_blocks>], [<tag:item:c:glass_blocks>, <item:create:electron_tube>, <item:create:electron_tube> , <item:create:electron_tube>, <tag:item:c:glass_blocks>], [<item:create:brass_ingot>, <item:spore:armor_fragment>,<item:create:shaft>,<item:spore:armor_fragment>, <item:create:brass_ingot>]]);

//Cleanup
<recipetype:create:crushing>.removeByName("create:crushing/diorite_recycling");
