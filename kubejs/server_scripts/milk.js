ItemEvents.entityInteracted('spore:alveolic_sack', event => {
  const cows = ['minecraft:cow', 'minecraft:mooshroom']

  if (!cows.includes(event.target.type)) return

  event.item.count--

  event.player.giveInHand('spore:milky_sack')

  event.target.playSound('minecraft:entity.cow.milk')
})