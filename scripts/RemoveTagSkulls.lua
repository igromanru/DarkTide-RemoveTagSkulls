local mod = get_mod("RemoveTagSkulls")

local SettingNames = mod:io_dofile("RemoveTagSkulls/scripts/setting_names")

local marker_type_unit_threat = "unit_threat"
local marker_type_unit_threat_veteran = "unit_threat_veteran"

mod:hook(CLASS.HudElementWorldMarkers, "_template_by_type", function(func, self, marker_type, clone)
	mod:debug("--- [HudElementWorldMarkers:_template_by_type] ---")
    mod:debug("marker_type: %s", marker_type)
    if (mod:get(SettingNames.RemoveTagSkull) and marker_type == marker_type_unit_threat)
        or (mod:get(SettingNames.RemoveVeteranTagSkull) and marker_type == marker_type_unit_threat_veteran) then
        local template = table.clone(self._marker_templates[marker_type])
        template.max_distance = 0
        return template
    end
    mod:debug("--------------------")

	return func(self, marker_type, clone)
end)