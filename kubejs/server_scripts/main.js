EntityEvents.spawned(event => {
    const entity = event.entity
    if (entity.type === 'spore:mound') {
        let nbt = entity.nbt.merge({ "max_age": 4 })
        entity.setNbt(nbt)
    }
})