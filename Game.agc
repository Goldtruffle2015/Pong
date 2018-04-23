player1movement:
	if GetRawKeyState(87) = 1 // "w" key
		if player1spritey >= 0
			if Timer() <= stundurationplayer1 + 1
				if elementid2 = 1
					player1spritey = player1spritey - 8
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
				if elementid2 = 3
					player1spritey = player1spritey 
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
			else
				if airstunplayer1 = 1
					player1spritey = player1spritey 
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				else
					player1spritey = player1spritey - player1spritespeed
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
			endif
		endif
	endif
	if GetRawKeyState(83) = 1 // "s" key
		if player1spritey <= GetVirtualHeight() - GetSpriteHeight(player1sprite)
			if Timer() <= stundurationplayer1 + 1
				if elementid2 = 1
					player1spritey = player1spritey + 8
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
				if elementid2 = 3
					player1spritey = player1spritey 
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
			else
				if airstunplayer1 = 1
					player1spritey = player1spritey 
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				else 
					player1spritey = player1spritey + player1spritespeed
					SetSpritePosition(player1sprite, player1spritex, player1spritey)
				endif
			endif
		endif
	endif
return

player1abilitycontrols:
// Fire Controls //
	if elementid1 = 1 // Fire
		if player1currentcooldown >= player1totalcooldown
			if GetRawKeyPressed(68) = 1 // "d" key
				fireabilitystatus1 = 1
				SetSpriteColorAlpha(fireability1sprite, 255)
				fireability1spritey = player1spritey + GetSpriteHeight(player1sprite)/2 - GetSpriteHeight(fireability1sprite)/2
				player1totalcooldown = GetSeconds() + 10
				player1totalcooldownwidth = 10
				player1currentcooldownsave = GetSeconds() 
				startcounting1 = 1
			endif
		endif
		if fireabilitystatus1 = 0 then fireability1spritex = -GetSpriteWidth(fireability1sprite) - 10
		if fireabilitystatus1 = 1
			fireability1spritex = fireability1spritex + 70
			SetSpritePosition(fireability1sprite, fireability1spritex, fireability1spritey)
		endif
		if startcounting1 = 1
			player1currentcooldown = GetSeconds()	
		endif
	endif
// Water Controls //
	if elementid1 = 2 
		if	player1currentcooldown >= player1totalcooldown
			if GetRawKeyPressed(68) = 1
				player1hp = player1hp + 100
				if player1hp >= player1totalhp
					player1hp = player1totalhp
				endif
				player1hpbarmeterw = (GetSpriteWidth(player1hpbarback) - 10) * player1hp / player1totalhp
				SetSpriteSize(player1hpbarmeter, player1hpbarmeterw, player1hpbarmeterh)
				player1totalcooldown = GetSeconds() + 20
				player1totalcooldownwidth = 20
				player1currentcooldownsave = GetSeconds()
				startcounting1 = 1
			endif
		endif
		if startcounting1 = 1
			player1currentcooldown = GetSeconds()
		endif		
	endif
// Earth Controls //
	if elementid1 = 3
		if player1currentcooldown >= player1totalcooldown
			if GetRawKeyPressed(68) = 1
				earthabilitystatus1 = 1
				SetSpriteColorAlpha(earthability1sprite, 255)
				earthability1spritey = player1spritey + GetSpriteHeight(player1sprite)/2 - GetSpriteHeight(earthability1sprite)/2
				player1totalcooldown = GetSeconds() + 10
				player1totalcooldownwidth = 10
				player1currentcooldownsave = GetSeconds()
				startcounting1 = 1		
			endif
		endif
		if earthabilitystatus1 = 0 
			earthability1spritex = -GetSpriteWidth(earthability1sprite) - 10
			SetSpritePosition(earthability1sprite, earthability1spritex, earthability1spritey)
		endif
		if earthabilitystatus1 = 1
			earthability1spritex = earthability1spritex + 50

			SetSpritePosition(earthability1sprite, earthability1spritex, earthability1spritey)
		endif
		if startcounting1 = 1
			player1currentcooldown = GetSeconds()
		endif
	endif
// Air Controls //
	if elementid1 = 4
		if player1currentcooldown >= player1totalcooldown
			if GetRawKeyPressed(68) = 1
				airabilitystatus1 = 1
				SetSpriteColorAlpha(airability1sprite, 255)
				player1totalcooldown = GetSeconds() + 8
				player1totalcooldownwidth = 8
				player1currentcooldownsave = GetSeconds()
				startcounting1 = 1
			endif
		endif
		if airabilitystatus1 = 0 
			airability1spritex = -GetSpriteWidth(airability1sprite) - 10
			SetSpritePosition(airability1sprite, airability1spritex, airability1spritey)
		endif
		if airabilitystatus1 = 1
			airability1spritex = airability1spritex + 30
			airability1spritey = 0
			SetSpritePosition(airability1sprite, airability1spritex, airability1spritey)
		endif
		if startcounting1 = 1
			player1currentcooldown = GetSeconds()
		endif
	endif
return

player2movement:
	if GetRawKeyState(38) = 1 // Up key
		if player2spritey >= 0
			if Timer() <= stundurationplayer2 + 1
				if elementid1 = 1
					player2spritey = player2spritey - 8
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
				if elementid1 = 3
					player2spritey = player2spritey - 0
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
			else
				if airstunplayer2 = 1
					player2spritey = player2spritey 
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				else
					player2spritey = player2spritey - player2spritespeed
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
			endif	
		endif
	endif
	if GetRawKeyState(40) = 1 // Down Key
		if player2spritey <= GetVirtualHeight() - GetSpriteHeight(player2sprite)
			if Timer() <= stundurationplayer2 + 1
				// If hit by fireability1sprite //
				if elementid1 = 1
					player2spritey = player2spritey + 8
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
				// If hit by earthability1sprite //
				if elementid1 = 3
					player2spritey = player2spritey + 0
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
			else
				if airstunplayer2 = 1
					player2spritey = player2spritey - 0
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				else
					player2spritey = player2spritey + player2spritespeed
					SetSpritePosition(player2sprite, player2spritex, player2spritey)
				endif
			endif
		endif
	endif
return

player2abilitycontrols:
// Fire Controls //
	if elementid2 = 1 // Fire
		if player2currentcooldown >= player2totalcooldown
			if GetRawKeyPressed(37) = 1 // "left arrow" key
				fireabilitystatus2 = 1
				SetSpriteColorAlpha(fireability2sprite, 255)
				fireability2spritey = player2spritey + GetSpriteHeight(player2sprite)/2 - GetSpriteHeight(fireability2sprite)/2
				player2totalcooldown = GetSeconds() + 10
				player2totalcooldownwidth = 10
				player2currentcooldownsave = GetSeconds()
				startcounting2 = 1			
			endif
		endif
		if fireabilitystatus2 = 0 
			fireability2spritex = GetVirtualWidth() + 10
			SetSpritePosition(fireability2sprite, fireability2spritex, fireability2spritey)
		endif
		if fireabilitystatus2 = 1
			fireability2spritex = fireability2spritex - 70
			SetSpritePosition(fireability2sprite, fireability2spritex, fireability2spritey)
		endif
		if startcounting2 = 1
			player2currentcooldown = GetSeconds()
		endif
	endif
// Water Controls //
	if elementid2 = 2 
		if player2currentcooldown >= player2totalcooldown
			if GetRawKeyPressed(37) = 1
				player2hp = player2hp + 100
				if player2hp >= player2totalhp
					player2hp = player2totalhp
				endif
				player2hpbarmeterw = (GetSpriteWidth(player2hpbarback) - 10) * player2hp / player2totalhp
				SetSpriteSize(player2hpbarmeter, player2hpbarmeterw, player2hpbarmeterh) 
				player2hpbarmeterx = player2hpbarbackx + GetSpriteWidth(player2hpbarback) - GetSpriteWidth(player2hpbarmeter) - 5
				SetSpritePosition(player2hpbarmeter, player2hpbarmeterx, player2hpbarmetery)
				player2totalcooldown = GetSeconds() + 20
				player2totalcooldownwidth = 20
				player2currentcooldownsave = GetSeconds()		
				startcounting2 = 1
			endif
		endif
		if startcounting2 = 1
			player2currentcooldown = GetSeconds()
		endif		
	endif
// Earth Controls //
	if elementid2 = 3
		if player2currentcooldown >= player2totalcooldown
			if GetRawKeyPressed(37) = 1
				earthabilitystatus2 = 1
				SetSpriteColorAlpha(earthability2sprite, 255)
				earthability2spritey = player2spritey + GetSpriteHeight(player2sprite)/2 - GetSpriteHeight(earthability2sprite)/2
				player2totalcooldown = GetSeconds() + 10
				player2totalcooldownwidth = 10
				player2currentcooldownsave = GetSeconds()
				startcounting2 = 1				
			endif
		endif
		if earthabilitystatus2 = 0 
			earthability2spritex = GetVirtualWidth() + 10
			SetSpritePosition(earthability2sprite, earthability2spritex, earthability2spritey)
		endif
		if earthabilitystatus2 = 1
			earthability2spritex = earthability2spritex - 50
			SetSpritePosition(earthability2sprite, earthability2spritex, earthability2spritey)
		endif
		if startcounting2 = 1
			player2currentcooldown = GetSeconds()
		endif
	endif
// Air Controls //
	if elementid2 = 4
		if player2currentcooldown >= player2totalcooldown
			if GetRawKeyPressed(37) = 1
				airabilitystatus2 = 1
				SetSpriteColorAlpha(airability2sprite, 255)
				player2totalcooldown = GetSeconds() + 8
				player2totalcooldownwidth = 8
				player2currentcooldownsave = GetSeconds()
				startcounting2 = 1		
			endif
		endif
		if airabilitystatus2 = 0 
			airability2spritex = GetVirtualWidth() + 10
			SetSpritePosition(airability2sprite, airability2spritex, airability2spritey)
		endif
		if airabilitystatus2 = 1
			airability2spritex = airability2spritex - 30
			airability2spritey = 0
			SetSpritePosition(airability2sprite, airability2spritex, airability2spritey)
		endif
		if startcounting2 = 1
			player2currentcooldown = GetSeconds()
		endif
	endif
return

ballmovement:
// Horizontal Movement //
	ballspritex = ballspritex + ballspritedirx*ballspritespeedx	
// Vertical Movement //
	ballspritey = ballspritey + ballspritediry*ballspritespeedy	
	SetSpritePosition(ballsprite, ballspritex, ballspritey)
// ballspeed //
	gametime = GetSeconds()
	runthroughonce1 = 0
	runthroughonce2 = 0
	runthroughonce3 = 0
	runthroughonce4 = 0
	// Stage 1 //
	if gametime >= timethatgamestartedat + 5
		if runthroughonce1 = 0 
			ballspritespeedx = Random(15, 20)
			ballspritespeedy = Random(15, 20)
			runthroughonce1 = 1
		endif		
	endif
	// Update Timer 1 //
	if gametime < timethatgamestartedat + 5
		timeuntilnextstage = timethatgamestartedat - gametime + 5
		SetTextString(timeuntilnextstagetext, str(timeuntilnextstage))
		timeuntilnextstagetextx = GetVirtualWidth()/2 - GetTextTotalWidth(timeuntilnextstagetext)/2
		timeuntilnextstagetexty = 10
		SetTextPosition(timeuntilnextstagetext, timeuntilnextstagetextx, timeuntilnextstagetexty)
	endif
	// Stage 2 //
	if gametime >= timethatgamestartedat + 10
		if runthroughonce2 = 0 
			ballspritespeedx = Random(20, 25)
			ballspritespeedy = Random(20, 25)
			runthroughonce2 = 1
		endif
	endif
	// Update Timer 2 //
	if gametime < timethatgamestartedat + 10 and gametime >= timethatgamestartedat + 5
		timeuntilnextstage = timethatgamestartedat - gametime + 10
		SetTextString(timeuntilnextstagetext, str(timeuntilnextstage))
		timeuntilnextstagetextx = GetVirtualWidth()/2 - GetTextTotalWidth(timeuntilnextstagetext)/2
		timeuntilnextstagetexty = 10
		SetTextPosition(timeuntilnextstagetext, timeuntilnextstagetextx, timeuntilnextstagetexty)
	endif
	// Stage 3 //
	if gametime >= timethatgamestartedat + 20
		if runthroughonce3 = 0 
			ballspritespeedx = Random(30, 40)
			ballspritespeedy = Random(30, 40)
			runthroughonce3 = 1
		endif			
	endif
	// Update Timer 3 //
	if gametime < timethatgamestartedat + 20 and gametime >= timethatgamestartedat + 10
		timeuntilnextstage = timethatgamestartedat - gametime + 20
		SetTextString(timeuntilnextstagetext, str(timeuntilnextstage))
		timeuntilnextstagetextx = GetVirtualWidth()/2 - GetTextTotalWidth(timeuntilnextstagetext)/2
		timeuntilnextstagetexty = 10
		SetTextPosition(timeuntilnextstagetext, timeuntilnextstagetextx, timeuntilnextstagetexty)
	endif
	// Stage 4 //
	if gametime >= timethatgamestartedat + 40
		if runthroughonce4 = 0 
			ballspritespeedx = Random(50, 60)
			ballspritespeedy = Random(50, 60)
			runthroughonce4 = 1			
		endif
		DeleteText(timeuntilnextstagetext)			
	endif
	// Update Timer 4 //
	if gametime < timethatgamestartedat + 40 and gametime >= timethatgamestartedat + 20
		timeuntilnextstage = timethatgamestartedat - gametime + 40
		SetTextString(timeuntilnextstagetext, str(timeuntilnextstage))
		timeuntilnextstagetextx = GetVirtualWidth()/2 - GetTextTotalWidth(timeuntilnextstagetext)/2
		timeuntilnextstagetexty = 10
		SetTextPosition(timeuntilnextstagetext, timeuntilnextstagetextx, timeuntilnextstagetexty)
	endif
return

boundarycollision:
// Right Wall //
	if ballspritex >= GetVirtualWidth() - GetSpriteWidth(ballsprite)
	// Health Bar //
		player2hp = player2hp - 200
		player2hpbarmeterw = (GetSpriteWidth(player2hpbarback) - 10) * player2hp / player2totalhp
		SetSpriteSize(player2hpbarmeter, player2hpbarmeterw, player2hpbarmeterh) 
		player2hpbarmeterx = player2hpbarbackx + GetSpriteWidth(player2hpbarback) - GetSpriteWidth(player2hpbarmeter) - 5
		player2hpbarmetery = player2hpbarbacky + GetSpriteHeight(player2hpbarback)/2 - GetSpriteHeight(player2hpbarmeter)/2
		SetSpritePosition(player2hpbarmeter, player2hpbarmeterx, player2hpbarmetery)
	// Direction //
		ballspritedirx = -1
	endif	
	// Fire ability 1 //
	if elementid1 = 1
		if fireability1spritex >= GetVirtualWidth()
			fireabilitystatus1 = 0
			SetSpriteColorAlpha(fireability1sprite, 0)
			// Set the Health of Player 2 //
			player2hp = player2hp - 10
			player2hpbarmeterw = (GetSpriteWidth(player2hpbarback) - 10) * player2hp / player2totalhp
			SetSpriteSize(player2hpbarmeter, player2hpbarmeterw, player2hpbarmeterh) 
			player2hpbarmeterx = player2hpbarbackx + GetSpriteWidth(player2hpbarback) - GetSpriteWidth(player2hpbarmeter) - 5
			player2hpbarmetery = player2hpbarbacky + GetSpriteHeight(player2hpbarback)/2 - GetSpriteHeight(player2hpbarmeter)/2
			SetSpritePosition(player2hpbarmeter, player2hpbarmeterx, player2hpbarmetery)
		endif
	endif
	// Earth Ability 1 //
	if elementid1 = 3
		if earthability1spritex >= GetVirtualWidth()
			earthabilitystatus1 = 0
			SetSpriteColorAlpha(earthability1sprite, 0)
		endif
	endif
	// Air Ability 1 //
	if elementid1 = 4
		if airability1spritex >= GetVirtualWidth()
			airabilitystatus1 = 0
			SetSpriteColorAlpha(airability1sprite, 0)
		endif
	endif
	
// Left Wall //
	if ballspritex <= 0
	// Direction //
		ballspritedirx = 1
	// Health Bar //
		player1hp = player1hp - 200
		player1hpbarmeterw = (GetSpriteWidth(player1hpbarback) - 10) * player1hp / player1totalhp
		SetSpriteSize(player1hpbarmeter, player1hpbarmeterw, player1hpbarmeterh)
	endif
	// Fire ability 2 //
	if elementid2 = 1
		if fireability2spritex <= -GetSpriteWidth(fireability2sprite)
			fireabilitystatus2 = 0
			SetSpriteColorAlpha(fireability2sprite, 0)
			// Set the Health of Player 2 //
			player1hp = player1hp - 10
			player1hpbarmeterw = (GetSpriteWidth(player1hpbarback) - 10) * player1hp / player1totalhp
			SetSpriteSize(player1hpbarmeter, player1hpbarmeterw, player1hpbarmeterh) 
		endif
	endif
	// Earth Ability 2 //
	if elementid2 = 3
		if earthability2spritex <= -GetSpriteWidth(earthability2sprite)
			earthabilitystatus2 = 0
			SetSpriteColorAlpha(earthability2sprite, 0)
		endif
	endif
	// Air Ability 2 //
	if elementid2 = 4
		if airability2spritex <= -GetSpriteWidth(airability2sprite)
			airabilitystatus2 = 0
			SetSpriteColorAlpha(airability2sprite, 0)
		endif
	endif
	
// Bottom Wall //
	if ballspritey >= GetVirtualHeight() - GetSpriteHeight(ballsprite) - ballspritespeedy
		ballspritediry = -1
	endif
	
// Top Wall //
	if ballspritey <= 0
		ballspritediry = 1
	endif
	
return

spritecollision:
// Player 1 Sprite and Ball //
	if GetSpriteCollision(player1sprite, ballsprite) = 1
		ballspritedirx = 1
		spritecollidestatus = 1	
	endif
	
// Player 2 Sprite and Ball //
	if GetSpriteCollision(player2sprite, ballsprite) = 1
		ballspritedirx = -1
		spritecollidestatus = 1
	endif
// Player 1 Sprite collides with Player 2 Sprite //
	// fireability1sprite and player2 collide //
	if elementid1 = 1
		if GetSpriteCollision(fireability1sprite, player2sprite) = 1
			if GetSpriteColorAlpha(fireability1sprite) = 255
				if fireabilitystatus1 = 1
					SetSpriteColorAlpha(fireability1sprite, 0)
					fireabilitystatus1 = 0
					// If hit the cooldown is reduced to 3 seconds //
					player1totalcooldown = player1totalcooldown - 7
					player1totalcooldownwidth = 3
					// Set the Health of Player 2 //
					player2hp = player2hp - 50
					player2hpbarmeterw = (GetSpriteWidth(player2hpbarback) - 10) * player2hp / player2totalhp
					SetSpriteSize(player2hpbarmeter, player2hpbarmeterw, player2hpbarmeterh) 
					player2hpbarmeterx = player2hpbarbackx + GetSpriteWidth(player2hpbarback) - GetSpriteWidth(player2hpbarmeter) - 5
					player2hpbarmetery = player2hpbarbacky + GetSpriteHeight(player2hpbarback)/2 - GetSpriteHeight(player2hpbarmeter)/2
					SetSpritePosition(player2hpbarmeter, player2hpbarmeterx, player2hpbarmetery)
					// If hit player 2 is stunned //
					stundurationplayer2 = Timer() 
				endif
			endif
		endif
	endif
	// earthability1sprite and player2collide //
	if elementid1 = 3
		if GetSpriteCollision(earthability1sprite, player2sprite) = 1
			if GetSpriteColorAlpha(earthability1sprite) = 255
				if earthabilitystatus1 = 1
					earthabilitystatus1 = 0
					SetSpriteColorAlpha(earthability1sprite, 0)
					// If hit player 2 is stunned //
					stundurationplayer2 = Timer()					
				endif
			endif
		endif
	endif
	// earthability1sprite and pong ball collide //
	if elementid1 = 3
		if GetSpriteCollision(earthability1sprite, ballsprite) = 1
			if ballspritedirx = -1 
				ballspritedirx = 1
			endif
		endif
	endif
	// airability1sprite and player2collide //
	if elementid1 = 4
		if GetSpriteCollision(airability1sprite, player2sprite) = 1
			if GetSpriteColorAlpha(airability1sprite) = 255
				airstunplayer2 = 1
			endif
		else
			airstunplayer2 = 0
		endif
	endif
	// airability1sprite and player2sprite //
		// air and fire //
	if elementid1 = 4 and elementid2 = 1
		if GetSpriteCollision(airability1sprite, fireability2sprite) = 1
			fireabilitystatus2 = 0
			SetSpriteColorAlpha(fireability2sprite, 0)
		endif
	endif
		// air and earth //
	if elementid1 = 4 and elementid2 = 3
		if GetSpriteCollision(airability1sprite, earthability2sprite) = 1
			earthabilitystatus2 = 0
			SetSpriteColorAlpha(earthability2sprite, 0)
		endif
	endif
		// air and air //
	if elementid1 = 4 and elementid2 = 4 
		if GetSpriteColorAlpha(airability2sprite) = 255 and GetSpriteColorAlpha(airability1sprite) = 255
			if GetSpriteCollision(airability1sprite, airability2sprite) = 1
				airabilitystatus1 = 0
				SetSpriteColorAlpha(airability1sprite, 0)
				airabilitystatus2 = 0
				SetSpriteColorAlpha(airability2sprite, 0)
			endif
		endif
	endif
	
// Player 2 Sprite collides with Player 1 Sprite //
	// fireability2sprite and player1 collide //
	if elementid2 = 1
		if GetSpriteCollision(fireability2sprite, player1sprite) = 1
			if GetSpriteColorAlpha(fireability2sprite) = 255
				if fireabilitystatus2 = 1
					SetSpriteColorAlpha(fireability2sprite, 0)
					fireabilitystatus2 = 0
					// If hit the cooldown is reduced to 3 seconds //
					player2totalcooldown = player2totalcooldown - 7
					player2totalcooldownwidth = 3
					// Set the Health of Player 1 //
					player1hp = player1hp - 50
					player1hpbarmeterw = (GetSpriteWidth(player1hpbarback) - 10) * player1hp / player1totalhp
					SetSpriteSize(player1hpbarmeter, player1hpbarmeterw, player1hpbarmeterh) 
					// If hit player 1 is stunned //
					stundurationplayer1 = Timer() 
				endif
			endif
		endif
	endif
	// earthability2sprite and player1collide //
	if elementid2 = 3
		if GetSpriteCollision(earthability2sprite, player1sprite) = 1
			if GetSpriteColorAlpha(earthability2sprite) = 255
				if earthabilitystatus2 = 1
					earthabilitystatus2 = 0
					SetSpriteColorAlpha(earthability2sprite, 0)
					// If hit player 1 is stunned //
					stundurationplayer1 = Timer()					
				endif
			endif
		endif
	endif
	// earthability2sprite and pong ball collide //
	if elementid2 = 3
		if GetSpriteCollision(earthability2sprite, ballsprite) = 1
			if ballspritedirx = 1 
				ballspritedirx = -1
			endif
		endif
	endif
	// airability2sprite and player1collide //
	if elementid2 = 4
		if GetSpriteCollision(airability2sprite, player1sprite) = 1
			if GetSpriteColorAlpha(airability2sprite) = 255
				airstunplayer1 = 1
			endif
		else
			airstunplayer1 = 0
		endif
	endif
	// airability2sprite and player1sprite //
		// air and fire //
	if elementid2 = 4 and elementid1 = 1
		if GetSpriteCollision(airability2sprite, fireability1sprite) = 1
			fireabilitystatus1 = 0
			SetSpriteColorAlpha(fireability1sprite, 0)
		endif
	endif
		// air and earth //
	if elementid2 = 4 and elementid1 = 3
		if GetSpriteCollision(airability2sprite, earthability1sprite) = 1
			earthabilitystatus1 = 0
			SetSpriteColorAlpha(earthability1sprite, 0)
		endif
	endif
		// air and air //
	if elementid2 = 4 and elementid1 = 4
		if GetSpriteColorAlpha(airability1sprite) = 255 and GetSpriteColorAlpha(airability2sprite) = 255
			if GetSpriteCollision(airability2sprite, airability1sprite) = 1
				airabilitystatus1 = 0
				SetSpriteColorAlpha(airability1sprite, 0)
				airabilitystatus2 = 0
				SetSpriteColorAlpha(airability2sprite, 0)
			endif
		endif
	endif	
return


player1cooldownbarcommands:
	if startcounting1 = 0 
		player1currentcooldownwidth = player1currentcooldown
		player1totalcooldownwidth = player1totalcooldown
	endif
	if startcounting1 = 1 
		player1currentcooldownwidth = player1currentcooldown - player1currentcooldownsave
		if player1currentcooldownwidth >= player1totalcooldownwidth
				player1currentcooldownwidth = player1totalcooldownwidth
		endif
	endif
	player1cooldownmeterw = (GetSpriteWidth(player1cooldownback) - 10)*player1currentcooldownwidth/player1totalcooldownwidth
	SetSpriteSize(player1cooldownmeter, player1cooldownmeterw, player1cooldownmeterh)
	player1cooldownmeterx = player1cooldownbackx + 5
	player1cooldownmetery = player1cooldownbacky + GetSpriteHeight(player1cooldownback)/2 - GetSpriteHeight(player1cooldownmeter)/2
	SetSpritePosition(player1cooldownmeter, player1cooldownmeterx, player1cooldownmetery)
return

player2cooldownbarcommands:
	if startcounting2 = 0 
		player2currentcooldownwidth = player2currentcooldown
		player2totalcooldownwidth = player2totalcooldown
	endif
	if startcounting2 = 1 
		player2currentcooldownwidth = player2currentcooldown - player2currentcooldownsave
		if player2currentcooldownwidth >= player2totalcooldownwidth
				player2currentcooldownwidth = player2totalcooldownwidth
		endif
	endif
	player2cooldownmeterw = (GetSpriteWidth(player2cooldownback) - 10)*player2currentcooldownwidth/player2totalcooldownwidth
	SetSpriteSize(player2cooldownmeter, player2cooldownmeterw, player2cooldownmeterh)
	player2cooldownmeterx = player2cooldownbackx + GetSpriteWidth(player2cooldownback) - GetSpriteWidth(player2cooldownmeter) - 5
	player2cooldownmetery = player2cooldownbacky + GetSpriteHeight(player2cooldownback)/2 - GetSpriteHeight(player2cooldownmeter)/2
	SetSpritePosition(player2cooldownmeter, player2cooldownmeterx, player2cooldownmetery)
return

