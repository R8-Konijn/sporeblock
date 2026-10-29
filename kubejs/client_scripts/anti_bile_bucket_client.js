const $PlayerRightClickEvent = Java.loadClass('net.neoforged.neoforge.event.entity.player.PlayerInteractEvent$RightClickItem')

//Huge thanks to McArdellje for all the code below!
//This code is both server and client sides to prevent desync

// right click directly on the crusted bile
ItemEvents.rightClicked('minecraft:bucket', event => {
    if (event.target.block.id == 'spore:crusted_bile') {
        event.cancel()
    }
})
// hold right click then move view over the crusted bile
ItemEvents.firstRightClicked('minecraft:bucket', event => {
    if (event.target.block.id == 'spore:crusted_bile') {
        event.cancel()
    }
})