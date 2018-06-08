data:extend({
--[[ sct-lab-1 disabled
	{
		type = "recipe",
		name = "sct-lab-1",
		subgroup = "sct-labs",
		order = "a[labs]-a[sct-lab-1]",
		expensive =
		{
			enabled = false,
			hidden = true,
			energy_required = 12,
			ingredients =
			{
				{"sct-lab1-construction", 3},
				{"sct-lab1-mechanization", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-1",},
			},
		},
		normal = 
		{
			enabled = false,
			hidden = true,
			energy_required = 5,
			ingredients =
			{
				{"sct-lab1-construction", 2},
				{"sct-lab1-mechanization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-1",},
			},
		},
	},
]]--

	{
		type = "recipe",
		name = "sct-lab-2",
		subgroup = "sct-labs",
		order = "a[labs]-b[sct-lab-2]",
		expensive =
		{
			enabled = false,
			energy_required = 12,
			ingredients =
			{
				{"lab", 1},
				{"sct-lab2-construction", 3},
				{"sct-lab2-automatization", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-2",},
			},
		},
		normal = 
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"lab", 1},
				{"sct-lab2-construction", 2},
				{"sct-lab2-automatization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-2",},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-lab-3",
		subgroup = "sct-labs",
		order = "b[labs]-c[sct-lab-3]",
		expensive =
		{
			enabled = false,
			energy_required = 12,
			ingredients =
			{
				{"sct-lab-2", 1},
				{"sct-lab3-construction", 3},
				{"sct-lab3-optics", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-3",},
			},
		},
		normal = 
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"sct-lab-2", 1},
				{"sct-lab3-construction", 2},
				{"sct-lab3-optics", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-3",},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-lab-4",
		subgroup = "sct-labs",
		order = "b[labs]-d[lab4]",
		expensive =
		{
			enabled = false,
			energy_required = 12,
			ingredients =
			{
				{"sct-lab-3", 1},
				{"sct-lab4-construction", 3},
				{"sct-lab4-manipulators", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-4",},
			},
		},
		normal = 
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"sct-lab-3", 1},
				{"sct-lab4-construction", 2},
				{"sct-lab4-manipulators", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-4",},
			},
		},
	},
})

if (settings.startup["sct-tier1-lab"].value == "sct-lab-1") then
	data.raw.recipe["lab"].results = nil
	data.raw.recipe["lab"].ingredients = nil
	data.raw.recipe["lab"].expensive =
		{
			enabled = true,
			energy_required = 12,
			ingredients =
			{
				{"sct-lab1-construction", 3},
				{"sct-lab1-mechanization", 2},
			},
			results =
			{
				{ type="item", amount=1, name="lab",},
			},
		}
	data.raw.recipe["lab"].normal = 
		{
			enabled = true,
			energy_required = 5,
			ingredients =
			{
				{"sct-lab1-construction", 2},
				{"sct-lab1-mechanization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="lab",},
			},
		}
end

data.raw.recipe["lab"].order = "a[labs]-a[lab]"
data.raw.recipe["lab"].subgroup = "sct-labs"
data.raw.recipe["lab"].enabled = false
