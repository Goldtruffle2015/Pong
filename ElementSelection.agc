
elementiconcommands1:
// Fire 1 //
	if GetSpriteHitTest(firesprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			elementid1 = fire
			// Changes the hitpoints //
			player1totalhp = firehp
			player1hp = player1totalhp
			// Make the confirm text appear //
			confirmtextalpha = 255
			SetTextColorAlpha(confirmtext, confirmtextalpha)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, firex, firey)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*9/10 // Fire Offense Rating is 9/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*2/10 // Fire Defense Rating is 2/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*5/10 // Fire Speed Rating is 5/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 255, 0, 0, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Shoot a Fireball at your enemy")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 51, 255, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 255, 102, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 255, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player1spritespeed = firespeed
			// Set cooldowns //
			player1totalcooldown = 10 
			player1currentcooldown = player1totalcooldown
		endif
	endif
	// Water 1 //
	if GetSpriteHitTest(watersprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid1 = water
			player1totalhp = waterhp
			player1hp = player1totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, waterx, watery)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*1/10 // Water Offense Rating is 1/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*8/10 // Water Defense Rating is 8/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*7/10 // Water Speed Rating is 7/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 0, 42, 255, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Restore some of your lost health")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 255, 51, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 102, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 153, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player1spritespeed = waterspeed
			// Set cooldowns //
			player1totalcooldown = 15 
			player1currentcooldown = player1totalcooldown
		endif
	endif
	// Earth 1 //
	if GetSpriteHitTest(earthsprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid1 = earth
			player1totalhp = earthhp
			player1hp = player1totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, earthx, earthy)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*7/10 // Earth Offense Rating is 7/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*7/10 // Earth Defense Rating is 7/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*3/10 // Earth Speed Rating is 3/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 0, 150, 0, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Throw a boulder at your enemy")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 153, 255, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 153, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 255, 153, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player1spritespeed = earthspeed
			// Set cooldowns //
			player1totalcooldown = 10 
			player1currentcooldown = player1totalcooldown
		endif
	endif
	// Air 1 //
	if GetSpriteHitTest(airsprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid1 = air
			player1totalhp = airhp
			player1hp = player1totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, airx, airy)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*4/10 // Air Offense Rating is 4/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*7/10 // Air Defense Rating is 7/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*9/10 // Air Speed Rating is 9/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color//
			SetSpriteColor(elementstatback, 240, 240, 240, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Summon a Tornado")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 255, 204, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 153, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 51, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player1spritespeed = airspeed
			// Set cooldowns //
			player1totalcooldown = 8 
			player1currentcooldown = player1totalcooldown
		endif
	endif
return

elementiconcommands2:
		// Fire 2 //
	if GetSpriteHitTest(firesprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid2 = fire
			player2totalhp = firehp
			player2hp = player2totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, firex, firey)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*9/10 // Fire Offense Rating is 9/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*2/10 // Fire Defense Rating is 2/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*5/10 // Fire Speed Rating is 5/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 255, 0, 0, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Shoot a Fireball at your enemy")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 51, 255, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 255, 102, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 255, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player2spritespeed = firespeed
			// Set cooldowns //
			player2totalcooldown = 10 
			player2currentcooldown = player2totalcooldown
		endif
	endif
		// Water 2 //
	if GetSpriteHitTest(watersprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid2 = water
			player2totalhp = waterhp
			player2hp = player2totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, waterx, watery)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*1/10 // Water Offense Rating is 1/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*8/10 // Water Defense Rating is 8/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*7/10 // Water Speed Rating is 7/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 0, 42, 255, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Restore some of your lost health")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 255, 51, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 102, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 153, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player2spritespeed = waterspeed
			// Set cooldowns //
			player2totalcooldown = 15 
			player2currentcooldown = player2totalcooldown
		endif
	endif
		// Earth 2 //
	if GetSpriteHitTest(earthsprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid2 = earth
			player2totalhp = earthhp
			player2hp = player2totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, earthx, earthy)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*7/10 // Earth Offense Rating is 7/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*7/10 // Earth Defense Rating is 7/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*3/10 // Earth Speed Rating is 3/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 0, 150, 0, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Throw a boulder at your enemy")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 153, 255, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 153, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 255, 153, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player2spritespeed = earthspeed
			// Set cooldowns //
			player2totalcooldown = 10 
			player2currentcooldown = player2totalcooldown
		endif
	endif
		// Air 2 //
	if GetSpriteHitTest(airsprite, GetPointerX(), GetPointerY())
		if GetPointerPressed() = 1
			// Changes the hitpoints //
			elementid2 = air
			player2totalhp = airhp
			player2hp = player2totalhp
			// Make the confirm text appear //
			SetTextColorAlpha(confirmtext, 255)
			// Make the confirm box appear //
			confirmboxalpha = 255
			SetSpriteColorAlpha(confirmbox, confirmboxalpha)
			// Highlight the element icon chosen //
			SetSpriteColorAlpha(iconhighlight, 255)
			SetSpritePosition(iconhighlight, airx, airy)
			// Set the offense meter width //
			offensemeterw = GetSpriteWidth(offenseback)*4/10 // Air Offense Rating is 4/10
			SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
			// Set the defense meter width //
			defensemeterw = GetSpriteWidth(defenseback)*7/10 // Air Defense Rating is 7/10
			SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
			// Set the speed meter width //
			speedmeterw = GetSpriteWidth(speedback)*9/10 // Air Speed Rating is 9/10
			SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
			// Set the element stat background color //
			SetSpriteColor(elementstatback, 240, 240, 240, 255)
			// Set the Active Text String //
			SetTextString(activetext, "Active: Summon a Tornado")
			// Set the element meter color //
				// Offense Meter //
			SetSpriteColor(offensemeter, 255, 204, 0, 255)
				// Defense Meter //
			SetSpriteColor(defensemeter, 153, 255, 0, 255)
				// Speed Meter //
			SetSpriteColor(speedmeter, 51, 255, 0, 255)
			// Set Text Opacity //
			SetTextColorAlpha(activetext, 255)
			SetTextColorAlpha(offensetext, 255)
			SetTextColorAlpha(defensetext, 255)
			SetTextColorAlpha(speedtext, 255)
			// Changes the speed //
			player2spritespeed = airspeed
			// Set cooldowns //
			player2totalcooldown = 8 
			player2currentcooldown = player2totalcooldown
		endif
	endif
return

