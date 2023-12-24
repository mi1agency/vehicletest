 if SERVER then 
hook.Add("Think", "SGM_Speed_Think_429", function()
for _, ent in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
if ent:GetModel() == "models/sentry/boss429.mdl" then
ent.speed = ent:GetVelocity():Length()*0.0568181819*0.75
ent:SetPoseParameter("Speedo", ent.speed)
end
end
end)
end