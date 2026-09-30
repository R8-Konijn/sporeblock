StartupEvents.registry('block', event => {
  event.create('stripped_rotten_log') // Create a new block
    .displayName('Stripped Decayed Log') // Set a custom name
    .soundType('wood') // Set a material (affects the sounds and some properties)
    .hardness(2) // Set hardness (affects mining time)
    .resistance(2) // Set resistance (to explosions, etc)
    .requiresTool(false) // Requires a tool or it won't drop (see tags below)
    .tagBlock('minecraft:mineable/axe')
    .tagBlock('minecraft:logs')
    .tagBlock('minecraft:logs_that_burn')
    .tagBlock('c:stripped_logs')
    .property(BlockProperties.AXIS)
    .placementState(event => event.set(BlockProperties.AXIS, event.clickedFace.axis))
})

global.logStrippingMap = {
    'spore:rotten_log': 'kubejs:stripped_rotten_log',
}
