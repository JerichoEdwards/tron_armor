ARMOR_MOD_NAME = minetest.get_current_modname()
dofile(minetest.get_modpath(ARMOR_MOD_NAME).."/armor.lua")

if ARMOR_MATERIALS.tron then
	minetest.register_tool("tron_armor:helmet", {
		description = "Tron Helmet",
		inventory_image = "tron_armor_inv_helmet.png",
		groups = {armor_head=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
	minetest.register_tool("tron_armor:chestplate", {
		description = "Tron Chestplate",
		inventory_image = "tron_armor_inv_chestplate.png",
		groups = {armor_torso=20, armor_heal=12, armor_use=50},
		wear = 0,
	})
	minetest.register_tool("tron_armor:leggings", {
		description = "Tron Leggings",
		inventory_image = "tron_armor_inv_leggings.png",
		groups = {armor_legs=20, armor_heal=12, armor_use=50},
		wear = 0,
	})
	minetest.register_tool("tron_armor:boots", {
		description = "Tron Boots",
		inventory_image = "tron_armor_inv_boots.png",
		groups = {armor_feet=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "tron_armor:helmet",
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "tron_armor:chestplate",
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "tron_armor:leggings",
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "tron_armor:boots",
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end