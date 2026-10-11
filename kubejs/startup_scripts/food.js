ItemEvents.modification(event => {
    event.modify('spore:biomass_bacon', item => {
        item.modifyFood(food => {
            food.nutrition(16)
        })
    })
})