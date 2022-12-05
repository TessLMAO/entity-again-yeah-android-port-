doRockHover = false;

function onCreate()
	-- -- background shit
	makeLuaSprite('hall', 'entity/nikusa/NikusaBG', -1000, -425);
scaleObject('hall', 2, 2)
	addLuaSprite('hall', false);
end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;

function onUpdate(elapsed)
	-- getSongPosition();
end