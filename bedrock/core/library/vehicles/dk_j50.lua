local PrVeh = "prop_vehicle_jeep"
local Cat = "DK Cars"


local V = {
	-- Required information
	Name = "Ferrari J50 2017",
	Model = "models/dk_cars/ferrari/j50/fer_j50_17.mdl",
	Class = PrVeh,
	Category = Cat,

	-- Optional information
	Author = "DangerKiddy",
	Information = "",

	KeyValues = {
		vehiclescript = "scripts/vehicles/dkcars/dk_j50.txt"
	}
}
list.Set( "Vehicles", "dk_j50", V )

if SERVER then
    hook.Add("Think", "dk_j50_cntrl", function()
    	for k, ent in pairs(ents.FindByClass("prop_vehicle_jeep")) do
            if ent:GetModel() == "models/dk_cars/ferrari/j50/fer_j50_17.mdl" then
                if IsValid(ent:GetDriver()) then
                    local ply = ent:GetDriver()
                    if ent.WinDown == nil then ent.WinDown = false end
                    if ply:KeyDown( IN_SPEED ) then
                        timer.Simple(1, function()
                            if IsValid(ent) and not ply:KeyDown( IN_SPEED ) then
                                ent.WinDown = !ent.WinDown
                            end
                        end)
                    end
                    if ent.WinDown then
                        if ent:GetFlexWeight(1) <= 1 then
                            ent:SetFlexWeight( 1,ent:GetFlexWeight(1)+0.025 )
                        end
                    else
                        if ent:GetFlexWeight(1) >= 0 then
                            ent:SetFlexWeight( 1,ent:GetFlexWeight(1)-0.025 )
                        end
                    end
                end
            end
        end
    end)
    hook.Add("PlayerEnteredVehicle", "dk_j50_StartEngine", function(ply, vehicle, role)
        if vehicle:GetModel() == "models/dk_cars/ferrari/j50/fer_j50_17.mdl" and vehicle:GetClass() == "prop_vehicle_jeep" then
            vehicle:SetFlexWeight( 0, 1 )
            timer.Simple(1, function()
                if IsValid(vehicle) then vehicle:SetFlexWeight( 0, 0 ) end
            end)
        end
    end)
end