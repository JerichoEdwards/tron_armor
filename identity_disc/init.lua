local use_tron = minetest.get_modpath("trongrid")

-- Regisiter Identity Disc



if ARMOR_MATERIALS.tron then
	minetest.register_tool("identity_disc:identity_disc", {
		description = "Tron Identity Disc",
		inventory_image = "identity_disc_inv_identity_disc.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "identity_disc:identity_disc",
		recipe = {
			{"trongrid:tron_crystal", "trongrid:tron_crystal", "trongrid:tron_crystal"},
			{"trongrid:tron_crystal", "trongrid:tron_crystal", "trongrid:tron_crystal"},
			{"", "trongrid:tron_crystal", ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "identity_disc")
end)

