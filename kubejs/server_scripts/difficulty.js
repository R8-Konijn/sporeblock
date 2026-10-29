//Credits to McArdellje for the following code!

const DifficultyChangeEvent = Java.loadClass('net.neoforged.neoforge.event.DifficultyChangeEvent')
// required to get a reference to the server when the event does not give us one
const ServerLifecycleHooks = Java.loadClass('net.neoforged.neoforge.server.ServerLifecycleHooks')
const Difficulty = Java.loadClass('net.minecraft.world.Difficulty');

// store whether we were frozen before the peaceful freeze to be able to restore that state afterwards
let wasFrozenDueToPeaceful = false;
NativeEvents.onEvent(DifficultyChangeEvent, event => {
    if (event.difficulty == Difficulty.PEACEFUL) {
        ServerLifecycleHooks.getCurrentServer().tickRateManager().setFrozen(true);
        wasFrozenDueToPeaceful = true;
    }
})

ServerEvents.tick(event => {
    if (wasFrozenDueToPeaceful) {
        const server = event.getServer();
        if (server.getLevel('minecraft:overworld').getDifficulty() == Difficulty.PEACEFUL) {
            server.setDifficulty(Difficulty.EASY, true); // 2nd parameter is "forced", whether to ignore the difficulty being locked
        }
        server.tickRateManager().setFrozen(false);
    }
    wasFrozenDueToPeaceful = false;
})