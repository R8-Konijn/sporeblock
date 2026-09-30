BlockEvents.rightClicked("spore:hive_spawn", event => {
  const block = event.block
  const player = event.player

  let killpoints = event.block.entityData?.getInt("kills")

  player.tell(killpoints + "/20 Kill Points")
})

BlockEvents.rightClicked("spore:biomass_lump", event => {
  const block = event.block
  const player = event.player

  let killpoints = event.block.entityData?.getInt("kills")

  player.tell(killpoints + "/2 Kill Points")
})