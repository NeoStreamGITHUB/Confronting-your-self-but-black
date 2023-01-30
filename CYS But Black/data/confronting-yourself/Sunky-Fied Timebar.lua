function onBeatHit()
if curBeat % 2 == 0 then
setProperty('timeBar.color', getColorFromHex('FF0000'))
end

if curBeat % 4 == 0 then
setProperty('timeBar.color', getColorFromHex('3F029C'))
end

if curBeat % 6 == 0 then
setProperty('timeBar.color', getColorFromHex('0008FF'))
end

if curBeat % 8 == 0 then
setProperty('timeBar.color', getColorFromHex('3F029C'))
end

if curBeat % 10 == 0 then
setProperty('timeBar.color', getColorFromHex('26FF00'))
end

if curBeat % 12 == 0 then
setProperty('timeBar.color', getColorFromHex('FF7700'))
end

if curBeat % 14 == 0 then
setProperty('timeBar.color', getColorFromHex('00F2FF'))
end

if curBeat % 16 == 0 then
setProperty('timeBar.color', getColorFromHex('FFF700'))
end



end