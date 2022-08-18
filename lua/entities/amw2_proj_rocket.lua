AddCSLuaFile()

ENT.Type = "anim"
ENT.Category = "AMW2 - projectiles"
ENT.Spawnable = true
ENT.PrintName = "Rocket propelled grenade"
ENT.Model = "models/weapons/w_missile_launch.mdl"
ENT.SpawnTime = 0
ENT.next = 0
ENT.LifeTime = 5
ENT.Velocity = 90 / ArcCW.HUToM
ENT.AngleDodgyness = 2
ENT.AngleDodgynessTime = 0.1

ENT.TurnPerSecond = 180
ENT.WhoToTrack = false
ENT.DoNotTrack = true

function ENT:Initialize()
	-- Sets what model to use
	self:SetModel(self.Model)

	-- Init physics only on server, so it doesn't mess up physgun beam
	if SERVER then self:PhysicsInitSphere( 4 ) end

	self:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	timer.Simple(0.05, function()
		if IsValid(self) then
			self:SetCollisionGroup( COLLISION_GROUP_NONE )
		end
	end)

	if SERVER then
		local phys = self:GetPhysicsObject()
		phys:EnableGravity(false)
	end
	
	-- Make prop to fall on spawn
	self:PhysWake()
	self.SpawnTime = CurTime()

	self:EmitSound("AMW2.Rocket.Loop")
	self:EmitSound("AMW2.Rocket.Loop_Whistle")
	self:EmitSound("AMW2.Rocket.Loop_Hiss")
end

function ENT:PhysicsCollide( data, phys )
	self:Detonate()
end

function ENT:Think()
	if SERVER and self.SpawnTime < CurTime() - self.LifeTime then self:Detonate() return end
	
	if self.next <= CurTime() then
		if CLIENT then
			local emitter = ParticleEmitter(self:GetPos())
			if !self:IsValid() or self:WaterLevel() > 2 then return end

			if !IsValid(emitter) then return end

			local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
			smoke:SetVelocity( VectorRand() * 25 )
			smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
			smoke:SetDieTime( 1 )
			smoke:SetStartAlpha( 255 )
			smoke:SetEndAlpha( 0 )
			smoke:SetStartSize( 20 )
			smoke:SetEndSize( 0 )
			smoke:SetRoll( math.Rand(-180, 180) )
			smoke:SetRollDelta( math.Rand(-0.2,0.2) )
			smoke:SetColor( 113, 113, 113 )
			smoke:SetAirResistance( 5 )
			smoke:SetPos( self:GetPos() )
			smoke:SetLighting( false )
			emitter:Finish()
		end

		self.next = CurTime() + 0.01
	end

	if SERVER then
		local lastthink = ( CurTime() - ( self.lastthink or CurTime() ) )
		if !self:IsValid() then return end
		local phys = self:GetPhysicsObject()
		if SERVER and !phys:IsValid() then return end
		local homing = false
		if homing then
			local ang = self:GetAngles()
			
			if IsValid(self:GetOwner()) then
				local p = self:GetOwner()
				
				local tr = util.TraceLine({
					start = self:GetOwner():EyePos(),
					endpos = self:GetOwner():EyePos() + self:GetOwner():EyeAngles():Forward() * 10000,
					mask = (MASK_SHOT - CONTENTS_WINDOW),
					filter = self:GetOwner(),
				})

				local targetvec = tr.HitPos
				if IsValid(self.WhoToTrack) then
					-- do nothing
				elseif IsValid(tr.Entity) then
					if !tr.Entity.DoNotTrack then
						self.WhoToTrack = tr.Entity
					end
				end

				if IsValid(self.WhoToTrack) then
					targetvec = self.WhoToTrack:GetPos()
				end

				local new = Vector()
				new:Set(targetvec)
				new:Sub(self:GetPos())
				new:Normalize()

				new = new:Angle()

				ang = Angle( math.ApproachAngle( ang.x, new.x, self.TurnPerSecond * lastthink ), math.ApproachAngle( ang.y, new.y, self.TurnPerSecond * lastthink ), math.ApproachAngle( ang.z, new.z, self.TurnPerSecond * lastthink ) )--new:Angle()
			end

			phys:SetAngles( ang )
		end
		if ( self.dodgythink or CurTime() ) <= CurTime() then
			phys:SetAngles( phys:GetAngles() + AngleRand( -self.AngleDodgyness, self.AngleDodgyness ) )
			phys:SetVelocity( (phys:GetAngles():Forward() * self.Velocity) )
			self.dodgythink = CurTime() + self.AngleDodgynessTime
		end
		self.lastthink = CurTime()
		self:NextThink( CurTime() )
		return true
	end
end

function ENT:Detonate()
	local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	if self:WaterLevel() > 0 then
		util.Effect("WaterSurfaceExplosion", fx)
	else
		--util.Effect("cball_explode", fx)
		fx:SetFlags(4)--64+4)
		util.Effect("Explosion", fx)
	end

	self:EmitSound("AMW2.Explode")
	self:EmitSound("AMW2.ExplodeFar")

	do
		local d = DamageInfo()
		d:SetDamage( 160 )
		d:SetAttacker( IsValid(self:GetOwner()) and self:GetOwner() or self )
		d:SetInflictor( self )
		d:SetDamageType( DMG_BLAST + DMG_AIRBOAT )

		util.BlastDamageInfo( d, self:GetPos(), 400 )
	end

	self:Remove()
end

function ENT:OnRemove()
	self:StopSound("AMW2.Rocket.Loop")
	self:StopSound("AMW2.Rocket.Loop_Whistle")
	self:StopSound("AMW2.Rocket.Loop_Hiss")
end

function ENT:Draw()
	-- client sees a not moving thing for a sec
	if self:GetVelocity():LengthSqr() > 0 then
		self:DrawModel()
	end
end