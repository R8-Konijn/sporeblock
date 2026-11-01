BlockEvents.placed(event => {
    let {block} = event
    const level =  event.server.overworld()
    if(block.id == 'spore:overgrown_spawner') {
        let newEntity = level.createEntity("spore:mound")
        newEntity.x = block.x + 0.5
        newEntity.y = block.y + 1
        newEntity.z = block.z + 0.5
        newEntity.spawn()
    }
})