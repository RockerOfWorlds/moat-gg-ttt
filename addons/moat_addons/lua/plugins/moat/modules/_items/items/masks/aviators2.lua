
ITEM.ID = 2057

ITEM.Name = "USA Aviators"

ITEM.Description = "You look like the terminator with these badass glasses on"

ITEM.Model = "models/gmod_tower/aviators.mdl"

ITEM.Rarity = 8

ITEM.Collection = "Independence Collection"

ITEM.Attachment = "eyes"

function ITEM:ModifyClientsideModel( ply, model, pos, ang )

	pos = pos + (ang:Forward() * -2) + (ang:Up() * -0.5) + m_IsTerroristModel( ply:GetModel() )

	return model, pos, ang

end