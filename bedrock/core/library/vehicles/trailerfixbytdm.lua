hook.Add("PlayerSpawnedVehicle","Wheresthejoj",function( ply, vehicle )
 
    if not vehicle:GetModel( ) == "models/lonewolfie/trailers/*" then return end
	vehicle:Fire("HandbrakeOff", "", 0)
end)
