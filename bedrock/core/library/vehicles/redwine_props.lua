-- made by DangerKiddy with love for TASS
RedWine = RedWine or {}

RedWine.Props = RedWine.Props or {}

local function initCarProps(ent)
	if RedWine.Props[ent:GetVehicleClass()] then
		if ent.RedwineProps then
			for i, prop in ipairs(ent.RedwineProps) do
				if IsValid(prop) then prop:Remove() end
			end
		end

		ent.RedwineProps = {}

		local pos, ang = ent:GetPos(), ent:GetAngles()
		for i, data in ipairs(RedWine.Props[ent:GetVehicleClass()]) do
			local prop = ClientsideModel(data.Model, RENDERGROUP_TRANSLUCENT)
			prop:SetPos(pos)
			prop:SetAngles(ang)
			prop:SetParent(ent)
			prop:SetOwner(ent)

			prop:CallOnRemove("RedWine_RemoveCar", function()
				if IsValid(ent) then ent:Remove() end
			end)

			if data.AllowPaint then
				-- is it actually the best way to do this? If not, then let TASS know to optimize it better

				local id = prop:EntIndex() .. ent:EntIndex() .. "paintSync"
				timer.Create(id, 1, 0, function()
					if not IsValid(prop) or not IsValid(ent) then
						return timer.Destroy(id)
					end

					prop:SetColor(ent:GetColor())
				end)
			end

			ent.RedwineProps[#ent.RedwineProps + 1] = prop
		end

		ent:CallOnRemove("RedWine_RemoveCarProps", function()
			if ent.RedwineProps then
				for i, prop in ipairs(ent.RedwineProps) do
					if IsValid(prop) then prop:Remove() end
				end
			end
		end)
	end
end

hook.Add("OnEntityCreated", "RedWine.CreateClientsideProps", function(ent)
	timer.Simple(0, function()
		if not IsValid(ent) then return end
		
		if ent:GetClass() == "prop_vehicle_jeep" then
			initCarProps(ent)
		end
	end)
end)

-- Since (I guess) "OnEntityCreated" won't be called for each entity, when you just initialised on server, you need to create props by yourself for each car
hook.Add("InitPostEntity", "RedWine.PropsCreate", function()
	if game.SinglePlayer() then return end

	for i, ent in ipairs(ents.FindByClass("prop_vehicle_jeep")) do
		initCarProps(ent)
	end
end)

--[[-------------------------------------------------------------------------
Making it easy for TASS to add this in vehicle's lua file
---------------------------------------------------------------------------]]
function RedWine.AddPropedCar(carClass, modelList)
	RedWine.Props[carClass] = modelList
end
