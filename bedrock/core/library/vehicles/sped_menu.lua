-- if SERVER then
	-- include("spedmenu/spedmenu_server.lua")
-- elseif (CLIENT) then
	-- include("spedmenu/spedmenu_client.lua")
-- end
--[[---------------------------------------------------------
    RotorGlowColor Material Proxy
     
-----------------------------------------------------------]]

if SERVER then
	i = 0
	hook.Add("KeyPress", "SpedCars", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/spedcars/m5f10.mdl" then
					if key == IN_ATTACK then
						if toggle == 0.5 then toggle = 0 else toggle = 0.5 end
						car:SetPoseParameter("halo", toggle)
					elseif key == IN_ZOOM then
						if toggle == 1 then toggle = 0
							timer.Create( "wipers", 0.01, 0, function()
								i = i + 1
								if i == 180 then i = 0 end
								car:SetPoseParameter("wipers", 1 - math.sin(math.rad(i)))
							end)
						else toggle = 1 
							car:SetPoseParameter("wipers", 0)
							timer.Destroy("wipers")
						end
					end
			elseif car:GetModel() == "models/spedcars/rs5.mdl" then
					if key == IN_ATTACK then
						if toggle == 1 then toggle = 0
							timer.Create("mirrorsup", 0.02, 0, function()
								if (car:GetPoseParameter("mirrors")) >= 0.7 then --Lights on
									car:SetPoseParameter("mirrors", 0.7)
									timer.Destroy("mirrorsup")
								else
									car:SetPoseParameter("mirrors", car:GetPoseParameter("mirrors") + 0.02)
								end
							end)
						else toggle = 1
							timer.Create("mirrorsdown", 0.02, 0, function()
								if (car:GetPoseParameter("mirrors")) <= 0 then --Lights off
									car:SetPoseParameter("mirrors", 0)
									timer.Destroy("mirrorsdown")
								else
									car:SetPoseParameter("mirrors", car:GetPoseParameter("mirrors") - 0.02)
								end
							end)
						end
					end
			
			end
		end
	end) 
	
--	 util.AddNetworkString("spdDriver")
	 
--	 net.Receive("spdDriver", function(len, ply)
--		ent = net.ReadEntity():GetDriver()
--		net.Start("spdDriver")
--		net.WriteEntity(ent)
--		net.Send(ply)
--	 end)
	 
	
--else

--a = {} -- entity car, vector colour
--b = {} -- entity car, entity owner

--matproxy.Add( 
--	{
--		name = "RotorGlowColor",
--	
--		init = function( self, mat, values )
--			--Store the name of the variable we want to set
--			self.ResultTo = values.resultvar
--			colour = Vector(0, 0, 0)
--		end,

--		bind = function( self, mat, ent )

--			if not IsValid( ent ) then return end
			
--			if b[ent] == nil then
--				net.Start("spdDriver")
--				net.WriteEntity(ent)
--				net.SendToServer()
			
--				net.Receive("spdDriver", function (len, ply)
--					b[ent] = net.ReadEntity()
--				end )
--			end
			
--			owner = b[ent]
			
--			if ( !IsValid( owner ) or !owner:IsPlayer() ) then return end
--			if ( ent:IsVehicle() and owner:KeyDown(IN_JUMP)) then
--			print(ent, "", owner)
--			print(a[ent])
--			print(b[ent])
				--colour = colour - Vector(1, 0.5, 0)
--				if a[ent] == nil then a[ent] = Vector(0, 0, 0) end
--				a[ent] = a[ent] - Vector(1, 0.5, 0)
--				
				--colour = Vector(25, 25, 25)
--				mat:SetVector(self.ResultTo, a[ent] );
--			else
--				if a[ent] == nil then a[ent] = Vector(0, 0, 0) end
--				a[ent] = a[ent] + Vector(0.5, 0.25, 0)
				--a[ent] = a[ent] Vector(255, 255, 255)
--				mat:SetVector(self.ResultTo, a[ent]);
--			end
--		end 
--	} 
--)


end
