function onCreate()
	makeLuaSprite('ground', 'sol/BG_Sol_3', -1000, -425);
	setScrollFactor('ground', 1.0,1.0);
	scaleObject('ground', 2, 2);
	
	makeLuaSprite('limo', 'sol/BG_Sol_Limo', 0, 300);
	setScrollFactor('limo', 1.0,1.0);

if not lowQuality then
	makeAnimatedLuaSprite('agoti', 'sol/Agoti_Beat_Glow', 1190, 330);
	setScrollFactor('agoti', 1.0,1.0);
	
	makeAnimatedLuaSprite('aldryx', 'sol/Aldryx_Beat_Glow', 1740, 270);
	setScrollFactor('aldryx', 1.0,1.0);
	end
	addLuaSprite('sky', false);
	addLuaSprite('bgCity', false);
	addLuaSprite('ground', false);
	addLuaSprite('limo', false);
    addLuaSprite('agoti', false);
    addAnimationByPrefix('agoti', 'idle', 'Agoti beat', 24, false);
	addLuaSprite('aldryx', false);
	addAnimationByPrefix('aldryx', 'idle', 'Aldryx_Bop', 24, false);

    setProperty("limo.scale.x", 1.65);
	setProperty("limo.scale.y", 1.65);
	setProperty("agoti.scale.x", 0.85);
	setProperty("agoti.scale.y", 0.85);
		setProperty("aldryx.scale.x", 0.85);
		setProperty("aldryx.scale.y", 0.85);
		
end

function onBeatHit()
	if not lowQuality then
		objectPlayAnimation('agoti', 'idle', true);

		if (curBeat % 2 == 1) then
			setProperty("agoti.animation.curAnim.curFrame", 15);
		end

		if (curBeat % 2 == 0) then
			objectPlayAnimation('aldryx', 'idle', true);
		end
	end
end

function onUpdate(elapsed)
	-- getSongPosition();
end

function onEvent(name,value1,value2)
	if name == 'Sion' then 
		
		if value1 == 'Shake' then
       
       cameraShake('camGame', 0.01, 0.2)
       cameraShake('camHUD', 0.01, 0.2)
       characterPlayAnim('boyfriend','scared',true)
       
    

        end

		if value1 == '1' then
		
		
    setProperty('nada.visible', true);

		end

	end
end