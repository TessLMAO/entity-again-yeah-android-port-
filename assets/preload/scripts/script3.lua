--script made by ms funky
function onCreatePost()
    quickLuaSprite('blue', 'blue', 0, -1200)
    setObjectCamera('blue', 'other')
    setObjectOrder('blue', 21)

    quickLuaSprite('yellow', 'yellow', 1600, 0)
    setObjectCamera('yellow', 'other')
    setObjectOrder('yellow', 22)

    quickLuaSprite('red', 'red', -1200, 0)
    setObjectCamera('red', 'other')
    setObjectOrder('red', 23)

    quickLuaText('songText', songName, 0, -1200, 230, 80)
    setObjectCamera('songText', 'other')
    setObjectOrder('songText', 24)
end

function onSongStart()
    runTimer('objectsGoesIn', 0.3)
    runTimer('textGoesIn', 0.6)
end

function onTweenCompleted(tag)
	if tag == 'blueY1' then
		runTimer('pause', 1);
	end

    if tag == 'redX2' then
        doTweenX('yellowX2', 'yellow', 1600, 0.2, 'cubeIn');
        removeLuaSprite('red')
	end

    if tag == 'yellowX2' then
        doTweenY('blueY2', 'blue', -1300, 0.2, 'cubeIn');
        removeLuaSprite('yellow')
        runTimer('textGoesOut', 1)
	end
    
    if tag == 'blueY2' then
        removeLuaSprite('blue')
    end

    if tag == 'textX2' then
        removeLuaSprite('songText')
    end
end

function onTimerCompleted(tag)
	if tag == 'pause' then
        doTweenX('redX2', 'red', -1200, 0.2, 'cubeIn');
	end

    if tag == 'textGoesOut' then
        doTweenX('textX2', 'songText', -1200, 0.2, 'cubeIn');
	end
    
    if tag == 'textGoesIn' then
        doTweenX('textX1', 'songText', 560, 0.6, 'cubeOut');
    end

    if tag == 'objectsGoesIn' then
        doTweenY('blueY1', 'blue', 0, 0.6, 'cubeOut');
        doTweenX('yellowY1', 'yellow', 0, 0.6, 'cubeOut');
        doTweenX('redX1', 'red', 0, 0.6, 'cubeOut');
    end
end

--quick functions i did so this shit doesnt look messed
function quickLuaSprite(tag, image, x, y)
    makeLuaSprite(tag, image, x, y);
	addLuaSprite(tag);
end

function quickLuaText(tag, text, width, x, y, size)
    makeLuaText(tag, text, width, x, y);
    setTextSize(tag, size)
	addLuaText(tag);
end