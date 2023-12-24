--CrSk
local V = {
	-- Required information
	Name = "Nissan Skyline 2000GT Hardtop (KHGC210) '78",
	Model = "models/crsk_autos/nissan/skyline_2000gt_khgc210_1978.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_nissan_skyline_2000gt_khgc210_1978.txt"
	}
}
list.Set( "Vehicles", "crsk_nissan_skyline_2000gt_khgc210_1978", V )

local V = {
	-- Required information
	Name = "Nissan Laurel (C34) '95",
	Model = "models/crsk_autos/nissan/laurel_c34_1995.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_nissan_laurel_c34_1995.txt"
	}
}
list.Set( "Vehicles", "crsk_nissan_laurel_c34_1995", V )

local V = {
	-- Required information
	Name = "Nissan Pao '90",
	Model = "models/crsk_autos/nissan/pao_1990.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "CrushingSkirmish",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/crsk_autos/crsk_nissan_pao_1990.txt"
	}
}
list.Set( "Vehicles", "crsk_nissan_pao_1990", V )

-- DK
local V = {
	-- Required information
	Name = "Nissan Cedric Brougham (Y33) '97",
	Model = "models/dk_cars/nissan_cedric/cedric.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_cedric.txt"
	}
}
list.Set( "Vehicles", "dk_cedric", V )

hook.Add("OnEntityCreated", "DK_JDM_FixBones", function(ent)
	timer.Simple(.1, function()
		if not IsValid(ent) then return end
		if ent:GetModel() == "models/dk_cars/nissan_cedric/cedric.mdl" then
			ent:ManipulateBonePosition(ent:LookupBone("view_bone"),Vector(-4,4,0))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rl_spin"),Vector(0,0,-0.5))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rr_spin"),Vector(0,0,0.5))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fl_spin"),Vector(0,-0.5,0))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fr_spin"),Vector(0,-0.5,0))
		elseif ent:GetModel() == "models/dk_cars/nissan_cefiro/a31.mdl" then
			ent:ManipulateBonePosition(ent:LookupBone("view_bone"),Vector(2,4,-3))
		elseif ent:GetModel() == "models/dk_cars/nissan_cima/cima_y33.mdl" then
			ent:ManipulateBonePosition(ent:LookupBone("view_bone"),Vector(3,4,-2))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rl_spin"),Vector(0,0,-1.75))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rr_spin"),Vector(0,0,1.75))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fl_spin"),Vector(0,-1.25,0))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fr_spin"),Vector(0,-1.25,0))
		elseif ent:GetModel() == "models/dk_cars/nissan_laurel33/lavc33.mdl" then
			ent:ManipulateBonePosition(ent:LookupBone("view_bone"),Vector(0,6,3))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rl_spin"),Vector(0,0,-0.5))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rr_spin"),Vector(0,0,0.5))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fl_spin"),Vector(0,-1.25,0))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fr_spin"),Vector(0,-1.25,0))
		elseif ent:GetModel() == "models/dk_cars/nissan_stagea/wc34_ili_kak_tam.mdl" then
			ent:ManipulateBonePosition(ent:LookupBone("view_bone"),Vector(0,2,3))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rl_spin"),Vector(0,0,0.25))
			ent:ManipulateBonePosition(ent:LookupBone("wh_rr_spin"),Vector(0,0,-0.25))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fl_spin"),Vector(0,-0.35,0))
			ent:ManipulateBonePosition(ent:LookupBone("wh_fr_spin"),Vector(0,-0.35,0))
		end
	end)
end)

local V = {
	-- Required information
	Name = "Nissan Cefiro (A31) '94",
	Model = "models/dk_cars/nissan_cefiro/a31.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_cerifo.txt"
	}
}
list.Set( "Vehicles", "dk_cerifo", V )

local V = {
	-- Required information
	Name = "Nissan Cima (Y33) '96",
	Model = "models/dk_cars/nissan_cima/cima_y33.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_cima.txt"
	}
}
list.Set( "Vehicles", "dk_cima", V )

local V = {
	-- Required information
	Name = "Nissan Laurel (C33) '90",
	Model = "models/dk_cars/nissan_laurel33/lavc33.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_laurel33.txt"
	}
}
list.Set( "Vehicles", "dk_laurel33", V )

local V = {
	-- Required information
	Name = "Nissan Stagea (C34) '96",
	Model = "models/dk_cars/nissan_stagea/wc34_ili_kak_tam.mdl",
	Class = "prop_vehicle_jeep",
	Category = "DK Cars x CrSk Autos",

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_stagea.txt"
	}
}
list.Set( "Vehicles", "dk_stagea", V )