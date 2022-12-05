function onCreate()
if not lowQuality then
	makeAnimatedLuaSprite('void', 'Agoti/Bg', -600, -400);
	setScrollFactor('void', 0.5, 0.5);
	scaleObject('void', 5.6, 5.6);
	
	makeLuaSprite('tower', 'Agoti/tower', -225, -425);
	setScrollFactor('tower', 0.5, 0.5);
	scaleObject('tower', 2, 2);

	makeLuaSprite('ground', 'Agoti/floor', -1110, -950);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 2.4, 2.4);

	makeLuaSprite('agotirock', 'Agoti/rock', -540, -10);
	setScrollFactor('agotirock', 0.8, 0.8);
	scaleObject('agotirock', 2, 2);

	addLuaSprite('void', false);
    addAnimationByPrefix('void', 'idle', 'frame', 24, true);
	addLuaSprite('tower', false);
	addLuaSprite('agotirock', false);
	addLuaSprite('ground', false);
    else

makeLuaSprite('ground', 'Agoti/floor', -1110, -950);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 2.4, 2.4);

	setScrollFactor('ground', 1, 1);
	
	makeLuaSprite('back','Agoti/low/bg',-400, -400)
    addLuaSprite('back',false)
    scaleObject('back', 2.3, 2.3)
    setLuaSpriteScrollFactor('back', 1, 1);
addLuaSprite('ground',false)
end
end

function onUpdate(elapsed)

        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/20)
setCharacterY('gf',getCharacterY('gf') + (math.sin(currentBeat) * 0.3))


end