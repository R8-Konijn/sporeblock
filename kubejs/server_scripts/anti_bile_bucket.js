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