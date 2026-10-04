// s/o MDK discord people (DINO and deepacat in particular) to help me figure out how this works
ServerEvents.tick(event => {
    if (event.server.tickCount % 1200 !== 0) return

    const level =  event.server.overworld()

    let moblist = ["spore:inf_human", "spore:inf_villager", "spore:inf_pillager", "spore:inf_husk"]
 
    for (const entity of level.getEntities()) {
    
        if (!entity.nbt?.contains("age")) continue
        if (entity.nbt.getInt("age") !== 4) continue
        
        let i = Math.floor(Math.random() * moblist.length);
        let spawnedmob = moblist[i]

        let newEntity = level.createEntity(spawnedmob)
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