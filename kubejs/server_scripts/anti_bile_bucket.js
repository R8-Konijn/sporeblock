const BLOCKED_FLUIDS = ['spore:bile']

const $PlayerRightClickEvent = Java.loadClass('net.neoforged.neoforge.event.entity.player.PlayerInteractEvent$RightClickItem')

NativeEvents.onEvent($PlayerRightClickEvent, event => {
  function idOf(fluidState) {
    return Registry.of('minecraft:fluid').getKey(fluidState.type).location().toString()
  }

  const {entity, itemStack} = event
  if (itemStack.id != 'minecraft:bucket') return

  const hit = event.getEntity().rayTrace(entity.reachDistance, true)
  if (hit.type != "block") return;
  const block = hit.block;
  const fluidState = block.level.getFluidState(block.pos)

  if (BLOCKED_FLUIDS.includes(idOf(fluidState))) {
    event.setCanceled(true)
  }
})

//Huge thanks to McArdellje for all the code below!

// FluidHandler capability class, generally any block that handles fluids can be interacted with using this interface
const $FluidHandler = Java.loadClass('net.neoforged.neoforge.capabilities.Capabilities$FluidHandler');

// register an event to trigger every time the player right clicks a Basin
BlockEvents.rightClicked('create:basin', event => {
  // only run if the player is holding a bucket
  if (event.getItem().id != 'minecraft:bucket') return;
  // get the IFluidHandler interface for this basin
  let fluidHandler = event.getLevel().getCapability($FluidHandler.BLOCK, event.hitResult.blockPos);
  // accumulator for how much bile we found in the container
  let bileAmount = 0;
  // iterate over all "tanks" of the block (A tank is a fluid handling concept used by IFluidHandler, each tank can hold any amount of one type of fluid)
  // a basin has multiple "tanks" so it can hold multiple fluids simultaneously
  for (let i = 0; i < fluidHandler.getTanks(); i++) {
    // get the fluid in this tank
    let fluid = fluidHandler.getFluidInTank(i);
    // check if this fluid is bile
    if (fluid.is('spore:bile')) {
      // if it was bile, add the amount of this fluid to the total
      bileAmount += fluid.getAmount();
    }
  }
  // fluid amount is in millibuckets, there are 1000 millibuckets in a bucket
  // so any amount greater than or equal to 1000 buckets will be enough to fill a bucket in the players hand, which we want to prevent
  if (bileAmount >= 1000) {
    // prevent the basin from handling this event, therefore preventing the basin from filling the bucket in the player's hand
    event.cancel();
  }
})

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