ItemEvents.entityInteracted('spore:fungal_bonemeal', event => {

  if (event.target.type != 'spore:mound') return
  if (event.target.nbt.getInt("age") == 4) return

  const new_age = event.target.nbt.getInt("age") + 1

  let nbt = event.target.nbt.merge({ "age": new_age })

  event.target.setNbt(nbt)

  event.item.count--
  event.target.level.spawnParticles('minecraft:heart',
    true,
    event.target.x,
    event.target.y + event.target.bbHeight + 0.2,
    event.target.z,
    0.3 + 0.2*(new_age-2), 0.3, 0.3 + 0.2*(new_age-2),
    5 + 3*(new_age-2),
    0.02
  )
})