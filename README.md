
<!-- there's nothing interesting here-->
<h1 align="left">Pale Roblox Framework <a href="https://github.com/PaleHazeGuy">by PaleHaze</a></h1><strong align="left">[&#10071;] Whitelist Required,<br>[&#x1F4E7;] Contact me for whitelist : <a href="https://discord.com/users/224203860833468418">discord</a>,<br>[&#128195;] Whitelisted Places : <a href="https://robloxframework.palehaze.com/whitelist.json">(json format)</a>,</strong><br><a>[📤] Current version : 6/20/2024</a><br><hr><br><h2>[📖] Table of Contents</h2><ul> <li><a href="#_Installation">[&#128315;] Installation</a></li><li><a href="#_Usage">[&#128228;] Usage</a></li><li><a href="#_InitConfig">[⚙️] InitConfig</a></li><li><a href="#_Configuration">[⚙️] Configuration</a></li></ul><br><hr><br><h2 id="_Installation">[&#128315;] Installation</h2> <strong><br><strong>via Roblox "Run A Command" bar (❗ HTTPS Service Required)</strong><br><br>

```lua
local Installer = Instance.new("ModuleScript")
Installer.Source = game.HttpService:GetAsync("https://robloxframework.palehaze.com/init.lua")
require(Installer)()
Installer:Destroy()
```

<br><h2 id="_Usage">[&#128228;] Usage</h2><strong>Place your modules as follows:</strong><br>- **Client Modules:** in the `ClientModules` folder.<br>- **Server Modules:** in the `ServerModules` folder.<br>- **Shared Modules:** in the `SharedModules` folder, usable by both client and server.<br><br><strong>Example Module Script:</strong><br>

```lua
local Example = {
    InitConfig = {
        Priority = 20,  // Set a priority level from 20 (highest) to 1 (lowest)
        Run = true,
    },
}

function Example:Init()
    print("👋 Hello")
end

return Example
```

<br><h2 id="_InitConfig">[⚙️] InitConfig</h2><strong>`InitConfig` Object Details:</strong><br>The `InitConfig` object in your module scripts configures specific aspects of module initialization within the Pale Framework. Here's what you can set:

#### Properties

- **Priority**: Determines the order of module initialization, where 20 is the highest priority and 1 is the lowest. Modules with higher priority values are initialized earlier than those with lower priority values.- **Run**: Boolean flag that triggers automatic module initialization at startup if set to `true`.

#### Example Usage

```lua
local MyModule = {
    InitConfig = {
        Priority = 10,  -- Set a priority level from 20 (highest) to 1 (lowest)
        Run = true,
    },
}

function MyModule:Init()
    print("Module is initializing...")
end

return MyModule
```

Using `InitConfig` manages dependencies between modules efficiently, ensuring all components load correctly before gameplay begins.<br><h2 id="_Configuration">[⚙️] Configuration</h2><strong>Config Module Setup:</strong><br>Place the `Config` module within the main framework directory. It controls various settings:<br>

```lua
return {
    DebugInGame = false,                 -- Enables debugging within the game environment.
    DebugLv = "ImportantOnly",           -- Controls the level of debugging information shown of the framework ('ImportantOnly', 'Normal', 'All').
    FindTimeout = 3,                     -- Timeout in seconds for finding modules.
    InitTimeout = 8,                     -- Timeout for module initialization.
    LoadingTimeout = 5,                  -- Maximum time allowed for loading modules.
    PcallUnimportantModule = false,      -- Determines if non-critical modules should be loaded with pcall.
    ScriptDebug = false                  -- Enables detailed script debugging.
}
```

<br><h2><strong>More README.md soon I'm a bit lazy rn</strong></h2>
