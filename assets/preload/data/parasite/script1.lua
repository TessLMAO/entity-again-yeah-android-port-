
function onUpdatePost(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/180)

    doTweenY(rocksTweenY, 'agotirock', -400-60*math.sin((currentBeat*0.9)*math.pi),0.9)

  end

end
