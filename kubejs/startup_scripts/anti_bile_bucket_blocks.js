const DispenserBlockClass = Java.loadClass('net.minecraft.world.level.block.DispenserBlock')
const VanillaItems = Java.loadClass('net.minecraft.world.item.Items')
const DispenseBehavior = Java.loadClass('net.minecraft.core.dispenser.DispenseItemBehavior')

const BLOCKED_FLUIDS = ['spore:bile']

const originalBehavior = DispenserBlockClass.DISPENSER_REGISTRY.get(VanillaItems.BUCKET)

function isBlockedFluidInFront(source) {
  const facing = source.state().getValue(DispenserBlockClass.FACING)
  const target = source.pos().relative(facing)
  const fluidId = String(source.level().getFluidState(target).createLegacyBlock().block.id)
  return BLOCKED_FLUIDS.indexOf(fluidId) !== -1
}

DispenserBlockClass.registerBehavior(VanillaItems.BUCKET, new DispenseBehavior({
  dispense: function (source, stack) {
    if (isBlockedFluidInFront(source)) return stack
    return originalBehavior.dispense(source, stack)
  }
}))