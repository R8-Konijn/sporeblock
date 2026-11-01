const RenderGuiEvent$Pre = Java.loadClass('net.neoforged.neoforge.client.event.RenderGuiEvent$Pre')
const RenderSystem = Java.loadClass('com.mojang.blaze3d.systems.RenderSystem')
NativeEvents.onEvent(RenderGuiEvent$Pre, event => {
    RenderSystem.setShaderColor(1,1,1,1);
})