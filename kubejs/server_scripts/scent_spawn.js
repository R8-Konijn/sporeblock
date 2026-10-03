// s/o MDK discord people (DINO in particular) to help me with this
ServerEvents.tick(event => {
    if (event.server.tickCount % 1200 !== 0) return

    const level =  event.server.overworld()
 
    for (const entity of level.getEntities()) {
    
        if (!entity.nbt?.contains("age")) continue
        if (entity.nbt.getInt("age") !== 4) continue

        let newEntity = level.createEntity("spore:inf_human")
        newEntity.x = entity.x
        newEntity.y = entity.y
        newEntity.z = entity.z
        newEntity.spawn()
  }
})

ServerEvents.tick(event => {
    if (event.server.tickCount % 12000 !== 0) return

    const level =  event.server.overworld()
 
    for (const entity of level.getEntities()) {
    
        if (!entity.nbt?.contains("age")) continue
        if (entity.nbt.getInt("age") !== 4) continue

        let newEntity = level.createEntity("spore:scamper")
        newEntity.x = entity.x
        newEntity.y = entity.y
        newEntity.z = entity.z
        newEntity.spawn()
  }
})