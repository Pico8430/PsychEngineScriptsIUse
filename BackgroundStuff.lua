function onCreate()

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('enteryourbgnamehere', 'enteryourbgnamehere', -600, -300);
		setScrollFactor('enteryourbgnamehere', 0.9, 0.9);
	end

	addLuaSprite('enteryourbgnamehere', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

--Rename the file name to your background name and only put your background stuff here
--Remember that you will need to have an image that has a size of 2560 x 1400 pixels! Now you can delete this green text.