ServerEvents.loaded(event => {
    event.server.gameRules.set('doDaylightCycle', 'false');
    event.server.getLevel('minecraft:overworld').setDayTime(0); // /time set day
})