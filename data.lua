require("config")

if (sciencecosttweaker.options.sciencePackConfig == "bobsmods") then
	-- Check that both bobsmod tech and bobsmod plates is installed
	if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
		sciencecosttweaker.options.sciencePackConfig = "vanilla"
	end
end

-- Select the science pack config file as requested. Initial data file.
	sciencepackConfig = "tweaks." .. sciencecosttweaker.options.sciencePackConfig .. ".0_initial"
	require(sciencepackConfig)

if (sciencecosttweaker.options.difficultyEvo ~= "noadjustment") then

	-- Select the cost file depending on which one is requested.
	evoConfig = "configs.evolutions." .. sciencecosttweaker.options.difficultyEvo
	require(evoConfig)

	-- Adjust evolution factor according to the config option chosen.
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor * sciencecosttweaker.options.adjustEvolution.timeMultiplier; -- vanilla default: 0.000008
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor * sciencecosttweaker.options.adjustEvolution.pollutionMultiplier; -- vanilla default: 0.00003
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor * sciencecosttweaker.options.adjustEvolution.killNestsMultiplier; -- vanilla default: 0.005

end