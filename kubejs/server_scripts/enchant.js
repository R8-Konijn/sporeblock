// credits to meepr_dibr from the mdk discord for this bit of code
const nukedEnchantments = [
    'minecraft:mending',
    'minecraft:unbreaking'
]

ServerEvents.tags('enchantment', event => {
    event.removeAllTagsFrom(nukedEnchantments)
})