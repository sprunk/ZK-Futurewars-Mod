local body = piece 'body' 
local head = piece 'head' 
local tail = piece 'tail' 
local lthighf = piece 'lthighf' 
local lkneef = piece 'lkneef' 
local lshinf = piece 'lshinf' 
local lfootf = piece 'lfootf' 
local rthighf = piece 'rthighf' 
local rkneef = piece 'rkneef' 
local rshinf = piece 'rshinf' 
local rfootf = piece 'rfootf' 
local rsack = piece 'rsack' 
local lsack = piece 'lsack' 
local lthighb = piece 'lthighb' 
local lkneeb = piece 'lkneeb' 
local lshinb = piece 'lshinb' 
local lfootb = piece 'lfootb' 
local rthighb = piece 'rthighb' 
local rkneeb = piece 'rkneeb' 
local rshinb = piece 'rshinb' 
local rfootb = piece 'rfootb' 

local rad = math.rad
local bMoving

-- Signal definitions
local SIG_AIM = 2
local SIG_AIM_2 = 4
local SIG_MOVE = 8
local SIG_SHOT = 16

include "constants.lua"

local function walk()
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)
	while bMoving do
		Turn(lthighf, x_axis, rad(70), rad(115))
		Turn(lkneef, x_axis, rad(-40), rad(145))
		Turn(lshinf, x_axis, rad(20), rad(145))
		Turn(lfootf, x_axis, rad(-50), rad(210))
		
		Turn(rthighf, x_axis, rad(-20), rad(210))
		Turn(rkneef, x_axis, rad(-60), rad(210))
		Turn(rshinf, x_axis, rad(50), rad(210))
		Turn(rfootf, x_axis, rad(30), rad(210))
		
		Turn(rthighb, x_axis, rad(70), rad(115))
		Turn(rkneeb, x_axis, rad(-40), rad(145))
		Turn(rshinb, x_axis, rad(20), rad(145))
		Turn(rfootb, x_axis, rad(-50), rad(210))
		
		Turn(lthighb, x_axis, rad(-20), rad(210))
		Turn(lkneeb, x_axis, rad(-60), rad(210))
		Turn(lshinb, x_axis, rad(50), rad(210))
		Turn(lfootb, x_axis, rad(30), rad(210))
		
		Turn(body, z_axis, rad(-5), rad(20))
		Turn(lthighf, z_axis, rad(5), rad(20))
		Turn(rthighf, z_axis, rad(5), rad(20))
		Turn(rthighb, z_axis, rad(5), rad(20))
		Turn(lthighb, z_axis, rad(5), rad(20))
		Move(body, y_axis, 0.7, 4000)			
		Turn(tail, y_axis, rad(10), rad(40))
		Turn(head, x_axis, rad(-10), rad(20))
		Turn(tail, x_axis, rad(10), rad(20))
		WaitForTurn(lthighf, x_axis)
		
		Turn(lthighf, x_axis, rad(-10), rad(160))
		Turn(lkneef, x_axis, rad(15), rad(145))
		Turn(lshinf, x_axis, rad(-60), rad(250))
		Turn(lfootf, x_axis, rad(30), rad(145))
		
		Turn(rthighf, x_axis, rad(40), rad(145))
		Turn(rkneef, x_axis, rad(-35), rad(145))
		Turn(rshinf, x_axis, rad(-40), rad(145))
		Turn(rfootf, x_axis, rad(35), rad(145))
		
		Turn(rthighb, x_axis, rad(-10), rad(160))
		Turn(rkneeb, x_axis, rad(15), rad(145))
		Turn(rshinb, x_axis, rad(-60), rad(250))
		Turn(rfootb, x_axis, rad(30), rad(145))
		
		Turn(lthighb, x_axis, rad(40), rad(145))
		Turn(lkneeb, x_axis, rad(-35), rad(145))
		Turn(lshinb, x_axis, rad(-40), rad(145))
		Turn(lfootb, x_axis, rad(35), rad(145))
		
		Move(body, y_axis, 0, 4000)
		Turn(head, x_axis, rad(10), rad(20))
		Turn(tail, x_axis, rad(-10), rad(20))
		WaitForTurn(lshinf, x_axis)
		
		Turn(rthighf, x_axis, rad(70), rad(115))
		Turn(rkneef, x_axis, rad(-40), rad(145))
		Turn(rshinf, x_axis, rad(20), rad(145))
		Turn(rfootf, x_axis, rad(-50), rad(210))
		
		Turn(lthighf, x_axis, rad(-20), rad(210))
		Turn(lkneef, x_axis, rad(-60), rad(210))
		Turn(lshinf, x_axis, rad(50), rad(210))
		Turn(lfootf, x_axis, rad(30), rad(210))
					
		Turn(lthighb, x_axis, rad(70), rad(115))
		Turn(lkneeb, x_axis, rad(-40), rad(145))
		Turn(lshinb, x_axis, rad(20), rad(145))
		Turn(lfootb, x_axis, rad(-50), rad(210))
		
		Turn(rthighb, x_axis, rad(-20), rad(210))
		Turn(rkneeb, x_axis, rad(-60), rad(210))
		Turn(rshinb, x_axis, rad(50), rad(210))
		Turn(rfootb, x_axis, rad(30), rad(210))
		
		Turn(tail, y_axis, rad(-10), rad(40))
		Turn(body, z_axis, rad(5), rad(20))
		Turn(lthighf, z_axis, rad(-5), rad(20))
		Turn(rthighf, z_axis, rad(-5), rad(20))
		Turn(lthighb, z_axis, rad(-5), rad(20))
		Turn(rthighb, z_axis, rad(-5), rad(20))
		Move(body, y_axis, 0.7, 4000)
		Turn(head, x_axis, rad(-10), rad(20))
		Turn(tail, x_axis, rad(10), rad(20))
		WaitForTurn(rthighf, x_axis)
		
		Turn(rthighf, x_axis, rad(-10), rad(160))
		Turn(rkneef, x_axis, rad(15), rad(145))
		Turn(rshinf, x_axis, rad(-60), rad(250))
		Turn(rfootf, x_axis, rad(30), rad(145))
		
		Turn(lthighf, x_axis, rad(40), rad(145))
		Turn(lkneef, x_axis, rad(-35), rad(145))
		Turn(lshinf, x_axis, rad(-40), rad(145))
		Turn(lfootf, x_axis, rad(35), rad(145))
					
		Turn(lthighb, x_axis, rad(-10), rad(160))
		Turn(lkneeb, x_axis, rad(15), rad(145))
		Turn(lshinb, x_axis, rad(-60), rad(250))
		Turn(lfootb, x_axis, rad(30), rad(145))
		
		Turn(rthighb, x_axis, rad(40), rad(145))
		Turn(rkneeb, x_axis, rad(-35), rad(145))
		Turn(rshinb, x_axis, rad(-40), rad(145))
		Turn(rfootb, x_axis, rad(35), rad(145))

		Move(body, y_axis, 0, 4000)
		Turn(head, x_axis, rad(10), rad(20))
		Turn(tail, x_axis, rad(-10), rad(20))
		WaitForTurn(rshinf, x_axis)
	end
end

local function stopwalk()
	Signal(SIG_MOVE)
	SetSignalMask(SIG_MOVE)
	Turn(lfootf, x_axis, 0, rad(200))
	Turn(rfootf, x_axis, 0, rad(200))
	Turn(rthighf, x_axis, 0, rad(200))
	Turn(lthighf, x_axis, 0, rad(200))
	Turn(lshinf, x_axis, 0, rad(200))
	Turn(rshinf, x_axis, 0, rad(200))
	Turn(lkneef, x_axis, 0, rad(200))
	Turn(rkneef, x_axis, 0, rad(200))
	Turn(lfootb, x_axis, 0, rad(200))
	Turn(rfootb, x_axis, 0, rad(200))
	Turn(rthighb, x_axis, 0, rad(200))
	Turn(lthighb, x_axis, 0, rad(200))
	Turn(lshinb, x_axis, 0, rad(200))
	Turn(rshinb, x_axis, 0, rad(200))
	Turn(lkneeb, x_axis, 0, rad(200))
	Turn(rkneeb, x_axis, 0, rad(200))
end

local function ShotThread()
	Signal(SIG_SHOT)
	SetSignalMask(SIG_SHOT)
	Turn(lsack, y_axis, rad(40), rad(1))
	Turn(rsack, y_axis, rad(-40), rad(1))
	WaitForTurn(lsack, y_axis)
	Turn(lsack, y_axis, 0, rad(0.3))
	Turn(rsack, y_axis, 0, rad(0.3))
end

function script.StartMoving()
	bMoving = true
	StartThread(walk)
end

function script.StopMoving()
	bMoving = false
	StartThread(stopwalk)
end

function script.Create()
	EmitSfx(body, 1024+2)
end
	
function script.AimFromWeapon(num, piecenum)
	return head
end

function script.QueryWeapon(num)
	return head
end

--RestoreAfterDelay()
--	Sleep(1000)
--end

function script.AimWeapon(num, heading, pitch)
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(head, y_axis, heading, rad(250))
	Turn(head, x_axis, -pitch, rad(200))
		
	WaitForTurn(head, y_axis)
	--StartThread(RestoreAfterDelay)
	
	return true
end
	
function script.Shot(num)
	StartThread(ShotThread)
end
	

function script.HitByWeaponId()	
	EmitSfx(body, 1024)
	return 100
end

function script.Killed(recentDamage, maxHealth)
	EmitSfx(body, 1025)
	return 0
end
