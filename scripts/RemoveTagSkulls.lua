local mod = get_mod("RemoveTagSkulls")

local SettingNames = mod:io_dofile("RemoveTagSkulls/scripts/setting_names")

-- local ThreatSkullTemplate = "scripts/ui/hud/elements/world_markers/templates/world_marker_template_unit_threat"
-- local VeteranThreatSkullTemplate = "scripts/ui/hud/elements/world_markers/templates/world_marker_template_unit_threat_veteran"

local marker_type_unit_threat = "unit_threat"
local marker_type_unit_threat_veteran = "unit_threat_veteran"

mod:hook(CLASS.HudElementWorldMarkers, "event_add_world_marker_unit", function(func, self, marker_type, unit, callback, data)
	mod:debug("--- [HudElementWorldMarkers:event_add_world_marker_unit] ---")
    if mod:get(SettingNames.RemoveTagSkull) and marker_type == marker_type_unit_threat then
        return
    end
    if mod:get(SettingNames.RemoveVeteranTagSkull) and marker_type == marker_type_unit_threat_veteran then
        return
    end
    mod:debug("--------------------")

	func(self, marker_type, unit, callback, data)
end)