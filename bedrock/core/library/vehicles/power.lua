 if SERVER then
hook.Add("Think", "SGM_Power_Think", function()
for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
if ent:GetModel() == "models/sentry/roadsters.mdl" then
local Pwr = 0
if IsValid(ent:GetDriver()) then
if ent:GetDriver():KeyDown(IN_BACK) then Pwr = -1 end
if ent:GetDriver():KeyDown(IN_FORWARD) then Pwr = 1 end
end
ent.Cars_Power = Lerp(0.1, ent.Cars_Power or 0, Pwr)
ent:SetPoseParameter("Power", ent.Cars_Power)
end
end
end)
end
