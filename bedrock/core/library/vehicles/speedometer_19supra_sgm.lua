surface.CreateFont( "SGMSpeedometer_19supra", {
	size = 36,
	weight = 1000,
	antialias = true,
	additive = false,
	font = "USN_Stencil",
})


local SpeedometerData = {
	["models/sentry/19supra.mdl"] = {
		mphpos = Vector(15.65, -8.0, 42.13),
		mphang = Angle(80,0,0),
		mphscale = 0.015,
		mphcolor = Color(255,255,255,255),
		kmhpos = Vector(-16.45, -33.1, 36.6),
		kmhang = Angle(80,0,0),
		kmhscale = 0.015,
		kmhcolor = Color(0,0,0,0),
	},

}


local maxdistance = 500
local NearbyVehicles = {}
local function DrawSpeedometer()

	for _, vehicle in pairs(NearbyVehicles) do
		if not IsValid(vehicle) then return end
		local data = SpeedometerData[vehicle:GetModel()]
		if not data then return end

		local velo = vehicle:GetVelocity():Length()
		local kmh = math.Round((velo / 10.9361329722) * 0.75)
		local mph = math.Round((velo / 17.6) * 0.75)

		local carpos = vehicle:GetPos()
		local carang = vehicle:GetAngles()

		surface.SetFont("SGMSpeedometer_19supra")
		
		if data.mphpos then

			local mphang = carang * 1
			local mphpos = carpos + (mphang:Forward() * data.mphpos.x) + (mphang:Right() * data.mphpos.y) + (mphang:Up() * data.mphpos.z)
			
			mphang:RotateAroundAxis(mphang:Forward(), data.mphang.p)
			mphang:RotateAroundAxis(mphang:Up(), data.mphang.y)
			mphang:RotateAroundAxis(mphang:Right(), data.mphang.r)

			cam.Start3D2D(mphpos, mphang, data.mphscale)
				draw.SimpleText( mph, "SGMSpeedometer_19supra", 0, 0, data.mphcolor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT )
			cam.End3D2D()

		end

		if data.kmhpos then

			local kmhang = carang * 1
			local kmhpos = carpos + (kmhang:Forward() * data.kmhpos.x) + (kmhang:Right() * data.kmhpos.y) + (kmhang:Up() * data.kmhpos.z)
			
			kmhang:RotateAroundAxis(kmhang:Forward(), data.kmhang.p)
			kmhang:RotateAroundAxis(kmhang:Up(), data.kmhang.y)
			kmhang:RotateAroundAxis(kmhang:Right(), data.kmhang.r)

			cam.Start3D2D(kmhpos, kmhang, data.kmhscale)
				draw.SimpleText( kmh, "SGMSpeedometer_19supra", 0, 0, data.kmhcolor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
			cam.End3D2D()

		end

	end

end

hook.Add("PostDrawTranslucentRenderables", "SGM_DrawSpeedometers_19supra", DrawSpeedometer)

timer.Create("SGM_UpdateSpeedometers_19supra", 1, 0, function()
	if not IsValid(LocalPlayer()) then return end
	local pos = LocalPlayer():GetPos()
	NearbyVehicles = {}

	for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep")) do
		if pos:Distance(ent:GetPos()) < maxdistance then
			table.insert(NearbyVehicles, ent)
		end
	end

end)