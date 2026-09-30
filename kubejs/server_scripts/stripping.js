const playSound = 'playSound(net.minecraft.world.entity.Entity,net.minecraft.core.BlockPos,net.minecraft.sounds.SoundEvent,net.minecraft.sounds.SoundSource,float,float)'

BlockEvents.rightClicked(event => {
    const { player, block } = event
    const mainHandItem = player.mainHandItem
    const offHandItem = player.offHandItem
    const strippedVersion = global.logStrippingMap[block.id]

    if (strippedVersion) {
        if (mainHandItem.hasTag('minecraft:axes')) {
            stripBlock(block, strippedVersion, false);
        }
        else if (mainHandItem.id === 'minecraft:air' && offHandItem.hasTag('minecraft:axes')) {
            stripBlock(block, strippedVersion, true);
        }
    }

    function stripBlock(block, strippedVersion, useOffHand) {
        block.set(strippedVersion, block.properties)
        player.swing(useOffHand ? 'OFF_HAND' : 'MAIN_HAND', true)
        player.damageHeldItem(useOffHand ? 'off_hand' : 'main_hand', 1)
        event.level[playSound](null, block.pos, 'minecraft:item.axe.strip', 'players', 1 , 2)
    }
})