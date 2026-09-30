// s/o MDK discord people to help me with this
ServerEvents.tick(event => {
    if (event.server.tickCount % 12000 !== 0) return

    const level =  event.server.overworld()
 
    for (const entity of level.getEntities()) {
    
        if (!entity.nbt?.contains("age")) continue
        if (entity.nbt.getInt("age") !== 4) continue

        let newEntity = level.createEntity("spore:scent")
        newEntity.x = entity.x
        newEntity.y = entity.y
        newEntity.z = entity.z
        newEntity.spawn()
  }
})