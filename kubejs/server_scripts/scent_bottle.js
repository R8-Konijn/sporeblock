const $Capabilities = Java.loadClass("net.neoforged.neoforge.capabilities.Capabilities$FluidHandler")
const $FluidAction = Java.loadClass("net.neoforged.neoforge.fluids.capability.IFluidHandler$FluidAction")

BlockEvents.rightClicked("create:basin", event => {
  if (event.item.id != "minecraft:glass_bottle") return

  const handler = event.level.getCapability($Capabilities.BLOCK, event.block.pos, null)
  if (!handler) return

  // simulate first, "does the basin have enough ?"
  const wanted = Fluid.of("spore:bile", 100)
  const simulated = handler.drain(wanted, $FluidAction.SIMULATE)
  if (simulated.getAmount() < 100) return

  // drain it for real this time
  handler.drain(wanted, $FluidAction.EXECUTE)

  if(!event.player.isCreative()) {
    event.item.count--
  }

  event.player.give("spore:scent_spawnegg")

  event.player.playNotifySound("minecraft:item.bottle.fill", "players", 1, 1)

  event.cancel()
})