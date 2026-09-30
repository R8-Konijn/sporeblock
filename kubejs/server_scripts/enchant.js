// credits to meepr_dibr from the mdk discord for this bit of code
const nukedEnchantments = [
    'minecraft:mending',
    'minecraft:unbreaking'
]

ServerEvents.tags('enchantment', event => {
    event.removeAllTagsFrom(nukedEnchantments)
})

ServerEvents.generateData("last", event => {
    for (let id of nukedEnchantments) {
        event.json(`${id.namespace}:enchantment/${id.path}`, { "neoforge:conditions": [{ "type": "neoforge:false" }] })
    }
})