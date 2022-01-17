local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('video 1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('video 2');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end