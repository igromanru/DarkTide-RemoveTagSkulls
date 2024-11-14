local mod = get_mod("RemoveTagSkulls")

local SettingNames = mod:io_dofile("RemoveTagSkulls/scripts/setting_names")

return {
  mod_name =
  {
    en = "Remove Tag Skulls",
  },
  mod_description =
  {
    en = "Removes Skulls from tagged Enemies"
  },
  [SettingNames.RemoveTagSkull] = {
    en = "Remove Red Treat Skull"
  },
  [SettingNames.RemoveVeteranTagSkull] = {
    en = "Remove Veteran Tag Skull"
  },
  [SettingNames.KeepDaemonhostMarket] = {
    en = "Keep Daemonhost Market"
  },
}
