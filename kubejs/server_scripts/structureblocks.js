BlockEvents.rightClicked("spore:hive_spawn", event => {
  const block = event.block
  const player = event.player

  let killpoints = event.block.entityData?.getInt("kills")

  player.tell(killpoints + "/20 Kill Points")
})