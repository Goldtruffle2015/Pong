// Project: Pong 
// Author: John Yu
// Created: 2018-04-17

#include "Variables.agc"
#include "MainMenu.agc"
#include "ElementSelection.agc"
#include "Game.agc"

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Pong" )
SetWindowSize( 900, 600, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 900, 600 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// **** To-Do List **** //
/*
1. Add a second page in tutorial outlining what each ability does
*/

// Variables (One Time Use) //
titlecolorred = 255
titlecolorgreen = 0
titlecolorblue = 0

// **** Game Starts Here **** //
// Main Menu Loop Starts Here //
do
	
// **** Image Colors **** //
red = CreateImageColor(255, 0, 0, 255)
white = CreateImageColor(229, 246, 254, 255)
lightgrey = CreateImageColor(225, 225, 225, 255)
grey = CreateImageColor(50, 50, 50, 255)
black = CreateImageColor(0, 0, 0, 255)
babyblue = CreateImageColor(137, 207, 240, 255)
blue = CreateImageColor(0, 0, 255, 255)
skyblue = CreateImageColor(0, 191, 255, 255)
gold = CreateImageColor(255, 215, 0, 255)
green = CreateImageColor(0, 255, 0, 255)

//// ******** Code Starts Here ******** ////

// **** Variables (reused after play again) **** //
gosub Variable

// **** Start Screen Sprites **** //

// Start Screen Background //
startscreenbackground = CreateSprite(LoadImage("risingsun.png"))
SetSpriteSize(startscreenbackground, GetVirtualWidth(), GetVirtualHeight())

// Title //
pongtext = CreateText("Elemental-Pong")
SetTextSize(pongtext, 100)
SetTextColor(pongtext, titlecolorred, titlecolorgreen, titlecolorblue, 255)
pongtextx = GetVirtualWidth()/2 - GetTextTotalWidth(pongtext)/2
pongtexty = 0
SetTextPosition(pongtext, pongtextx, pongtexty)

// Play Button //
playtext = CreateText("PLAY")
SetTextSize(playtext, 50)
SetTextColor(playtext, 0, 0, 0, 255)
playtextx = GetVirtualWidth()/2 - GetTextTotalWidth(playtext)/2
playtexty = GetVirtualHeight()*2/5 - GetTextTotalHeight(playtext)
SetTextPosition(playtext, playtextx, playtexty)

// Tutorial Button //
tutorialtext = CreateText("?")
SetTextSize(tutorialtext, 50)
SetTextColor(tutorialtext, 0, 255, 100, 255)
tutorialtextx = GetVirtualWidth()/2 - GetTextTotalWidth(tutorialtext)/2
tutorialtexty = GetVirtualHeight()*13/20
SetTextPosition(tutorialtext, tutorialtextx, tutorialtexty)

// Tutorial Background //
tutorialback = CreateSprite(LoadImage("scroll.png"))
SetSpriteSize(tutorialback, GetVirtualWidth(), GetVirtualHeight())
SetSpriteColorAlpha(tutorialback, 0)
SetSpriteDepth(tutorialback, 1)

// Back Button //
backtext = CreateText("BACK")
SetTextSize(backtext, 50)
SetTextColorAlpha(backtext, 0)
SetTextDepth(backtext, 0)
backtextx = GetVirtualWidth()/2 - GetTextTotalWidth(backtext)/2
backtexty = GetVirtualHeight()*4/5 - GetTextTotalHeight(backtext)
SetTextPosition(backtext, backtextx, backtexty)

// Tutorial Text //
	// Left Page //
leftpagetitle = CreateText("Controls")
leftpagetext1 = CreateText("Player 1")
leftpagetext2 = CreateText("Use W and S to move paddle")
leftpagetext3 = CreateText("Use D to activate your ability")
leftpagetext4 = CreateText("Player 2")
leftpagetext5 = CreateText("Use PgUp and PgDn to move paddle")
leftpagetext6 = CreateText("Use left arrow key activate your ability")

	// Right Page //
rightpagetitle = CreateText("Gameplay")
rightpagetext1 = CreateText("1. Be the last one standing")
rightpagetext2 = CreateText("2. The Pong is deadly!")
rightpagetext3 = CreateText("3. Use actives for advantage")
rightpagetext4 = CreateText("4. Pong moves faster with time")
rightpagetext5 = CreateText("5. Timer tells when Pong speeds up")

	// Left Page Size //
SetTextSize(leftpagetitle, 60)
SetTextSize(leftpagetext1, 40)
SetTextSize(leftpagetext2, 25)
SetTextSize(leftpagetext3, 25)
SetTextSize(leftpagetext4, 40)
SetTextSize(leftpagetext5, 25)
SetTextSize(leftpagetext6, 25)

	// Right Page Size //
SetTextSize(rightpagetitle, 60)
SetTextSize(rightpagetext1, 25)
SetTextSize(rightpagetext2, 25)
SetTextSize(rightpagetext3, 25)
SetTextSize(rightpagetext4, 25)
SetTextSize(rightpagetext5, 25)

	// Left Page Position //
leftpagetitlex = GetVirtualWidth()/4 - GetTextTotalWidth(leftpagetitle)/2
leftpagetitley = GetVirtualHeight()/10
SetTextPosition(leftpagetitle, leftpagetitlex, leftpagetitley)

leftpagetext1x = GetVirtualWidth()/4 - GetTextTotalWidth(leftpagetext1)/2
leftpagetext1y = GetVirtualHeight()/5
SetTextPosition(leftpagetext1, leftpagetext1x, leftpagetext1y)

leftpagetext2x = GetVirtualWidth()/10
leftpagetext2y = GetVirtualHeight()*3/10
SetTextPosition(leftpagetext2, leftpagetext2x, leftpagetext2y)

leftpagetext3x = GetVirtualWidth()/10
leftpagetext3y = GetVirtualHeight()*7/20
SetTextPosition(leftpagetext3, leftpagetext3x, leftpagetext3y)

leftpagetext4x = GetVirtualWidth()/4 - GetTextTotalWidth(leftpagetext4)/2
leftpagetext4y = GetVirtualHeight()/2
SetTextPosition(leftpagetext4, leftpagetext4x, leftpagetext4y)

leftpagetext5x = GetVirtualWidth()/10
leftpagetext5y = GetVirtualHeight()*3/5
SetTextPosition(leftpagetext5, leftpagetext5x, leftpagetext5y)

leftpagetext6x = GetVirtualWidth()/10
leftpagetext6y = GetVirtualHeight()*13/20
SetTextPosition(leftpagetext6, leftpagetext6x, leftpagetext6y)

	// Right Page Position //
rightpagetitlex = GetVirtualWidth()*3/4 - GetTextTotalWidth(rightpagetitle)/2
rightpagetitley = GetVirtualHeight()/10
SetTextPosition(rightpagetitle, rightpagetitlex, rightpagetitley)

rightpagetext1x = GetVirtualWidth()*11/20
rightpagetext1y = GetVirtualHeight()*5/20
SetTextPosition(rightpagetext1, rightpagetext1x, rightpagetext1y)

rightpagetext2x = GetVirtualWidth()*11/20
rightpagetext2y = GetVirtualHeight()*7/20
SetTextPosition(rightpagetext2, rightpagetext2x, rightpagetext2y)

rightpagetext3x = GetVirtualWidth()*11/20
rightpagetext3y = GetVirtualHeight()*9/20
SetTextPosition(rightpagetext3, rightpagetext3x, rightpagetext3y)

rightpagetext4x = GetVirtualWidth()*11/20
rightpagetext4y = GetVirtualHeight()*11/20
SetTextPosition(rightpagetext4, rightpagetext4x, rightpagetext4y)

rightpagetext5x = GetVirtualWidth()*11/20
rightpagetext5y = GetVirtualHeight()*13/20
SetTextPosition(rightpagetext5, rightpagetext5x, rightpagetext5y)
	
	// Left Page Color //
SetTextColorAlpha(leftpagetitle, 0)
SetTextColorAlpha(leftpagetext1, 0)
SetTextColorAlpha(leftpagetext2, 0)
SetTextColorAlpha(leftpagetext3, 0)
SetTextColorAlpha(leftpagetext4, 0)
SetTextColorAlpha(leftpagetext5, 0)
SetTextColorAlpha(leftpagetext6, 0)
	
	// Right Page Color //
SetTextColorAlpha(rightpagetitle, 0)
SetTextColorAlpha(rightpagetext1, 0)
SetTextColorAlpha(rightpagetext2, 0)
SetTextColorAlpha(rightpagetext3, 0)
SetTextColorAlpha(rightpagetext4, 0)
SetTextColorAlpha(rightpagetext5, 0)
	
	// Left Page Depth //
SetTextDepth(leftpagetitle, 0)
SetTextDepth(leftpagetext1, 0)
SetTextDepth(leftpagetext2, 0)
SetTextDepth(leftpagetext3, 0)
SetTextDepth(leftpagetext4, 0)
SetTextDepth(leftpagetext5, 0)
SetTextDepth(leftpagetext6, 0)
	
	// Right Page Depth //
SetTextDepth(rightpagetitle, 0)
SetTextDepth(rightpagetext1, 0)
SetTextDepth(rightpagetext2, 0)
SetTextDepth(rightpagetext3, 0)
SetTextDepth(rightpagetext4, 0)
SetTextDepth(rightpagetext5, 0)

// **** Start Screen Code **** //
do
	//gosub startscreenbackgroundcolor
	gosub titlecolor
	gosub tutorialbuttoncommands
	gosub backbuttoncommands
	
	// Play Button Commands //
	if GetTextHitTest(playtext, GetPointerX(), GetPointerY())
		if GetSpriteColorAlpha(tutorialback) = 0
			SetTextSize(playtext, 55)
			playtextx = GetVirtualWidth()/2 - GetTextTotalWidth(playtext)/2
			playtexty = GetVirtualHeight()*2/5
			SetTextPosition(playtext, playtextx, playtexty)
			if GetPointerPressed() = 1
				sync() 
				titlecolorred = GetTextColorRed(pongtext)
				titlecolorgreen = GetTextColorGreen(pongtext)
				titlecolorblue = GetTextColorBlue(pongtext)
				DeleteAllText()
				exit
			endif
		endif
	else
		SetTextSize(playtext, 50)
		playtextx = GetVirtualWidth()/2 - GetTextTotalWidth(playtext)/2
		playtexty = GetVirtualHeight()*2/5
		SetTextPosition(playtext, playtextx, playtexty)
	endif
	
	// Tutorial Button Commands //
	
    Sync()
loop

// **** Character Selection **** //

// Sprites //

// Background //
charselectback = CreateSprite(LoadImage("fourelements.png"))
SetSpriteSize(charselectback, GetVirtualWidth(), GetVirtualHeight())

// Choose Your Element //
choosetext = CreateText("CHOOSE YOUR ELEMENT")
SetTextSize(choosetext, 50)
SetTextColor(choosetext, 255, 255, 255, 255)
choosetextx = GetVirtualWidth()/2 - GetTextTotalWidth(choosetext)/2
choosetexty = 0
SetTextPosition(choosetext, choosetextx, choosetexty)

// Element Sprites //
	// Fire Sprite //
fireimage = LoadImage("fire.png")
firesprite = CreateSprite(fireimage)
SetSpriteScale(firesprite, (GetVirtualWidth()/10)/(GetSpriteWidth(firesprite)), (GetVirtualWidth()/10)/(GetSpriteWidth(firesprite)))
firex = GetVirtualWidth()/5 - GetSpriteWidth(firesprite)/2
firey = GetVirtualHeight()/4 - GetSpriteHeight(firesprite)/2
SetSpritePosition(firesprite, firex, firey)
SetSpriteDepth(firesprite, 0)

	// Water Sprite //
waterimage = LoadImage("water.png")
watersprite = CreateSprite(waterimage)
SetSpriteScale(watersprite, (GetVirtualWidth()/10)/(GetSpriteWidth(watersprite)), (GetVirtualWidth()/10)/(GetSpriteWidth(watersprite)))
waterx = GetVirtualWidth()*2/5 - GetSpriteWidth(watersprite)/2
watery = GetVirtualHeight()/4 - GetSpriteHeight(watersprite)/2
SetSpritePosition(watersprite, waterx, watery)
SetSpriteDepth(watersprite, 0)

	// Earth Sprite //
earthimage = LoadImage("earth.png")
earthsprite = CreateSprite(earthimage)
SetSpriteScale(earthsprite, (GetVirtualWidth()/10)/(GetSpriteWidth(earthsprite)), (GetVirtualWidth()/10)/(GetSpriteWidth(earthsprite)))
earthx = GetVirtualWidth()*3/5 - GetSpriteWidth(earthsprite)/2
earthy = GetVirtualHeight()/4 - GetSpriteHeight(earthsprite)/2
SetSpritePosition(earthsprite, earthx, earthy)
SetSpriteDepth(earthsprite, 0)

	// Air Sprite //
airimage = LoadImage("air.png")
airsprite = CreateSprite(airimage)
SetSpriteScale(airsprite, (GetVirtualWidth()/10)/(GetSpriteWidth(airsprite)), (GetVirtualWidth()/10)/(GetSpriteWidth(airsprite)))
airx = GetVirtualWidth()*4/5 - GetSpriteWidth(airsprite)/2
airy = GetVirtualHeight()/4 - GetSpriteHeight(airsprite)/2
SetSpritePosition(airsprite, airx, airy)
SetSpriteDepth(airsprite, 0)

// Other Sprites //
	// Confirm Button //
		// Text
confirmtext = CreateText("CONFIRM")
SetTextDepth(confirmtext, 0)
SetTextSize(confirmtext, 50)
SetTextColor(confirmtext, 255, 255, 255, confirmtextalpha)
confirmtextx = GetVirtualWidth()/2 - GetTextTotalWidth(confirmtext)/2
confirmtexty = GetVirtualHeight() - GetTextTotalHeight(confirmtext)*2
SetTextPosition(confirmtext, confirmtextx, confirmtexty)

		// Confirm Box //
confirmbox = CreateSprite(skyblue)
SetSpriteColor(confirmbox, 32, 64, 67, confirmboxalpha)
confirmboxw = GetTextTotalWidth(confirmtext)
confirmboxh = GetTextTotalHeight(confirmtext)
SetSpriteSize(confirmbox, confirmboxw, confirmboxh)
SetSpritePosition(confirmbox, confirmtextx, confirmtexty)

		// Player 1 Text //
player1choicetext = CreateText("Player 1")
SetTextSize(player1choicetext, 50)
SetTextColor(player1choicetext, 255, 255, 255, player1choicetextalpha)
player1choicetextx = GetVirtualWidth()/2 - GetTextTotalWidth(player1choicetext)/2
player1choicetexty = GetTextTotalHeight(choosetext)
SetTextPosition(player1choicetext, player1choicetextx, player1choicetexty)

		// Player 2 Choice Text //
player2choicetext = CreateText("Player 2")
SetTextSize(player2choicetext, 50)
SetTextColor(player2choicetext, 255, 255, 255, player2choicetextalpha)
player2choicetextx = GetVirtualWidth()/2 - GetTextTotalWidth(player2choicetext)/2
player2choicetexty = GetTextTotalHeight(choosetext)
SetTextPosition(player2choicetext, player2choicetextx, player2choicetexty)

// Element Stat // **Displays the stats of the chosen element**
	// Background //
elementstatback = CreateSprite(white)
SetSpriteSize(elementstatback, GetVirtualWidth(), GetVirtualHeight()*19/40)
elementstatbackx = 0
elementstatbacky = GetVirtualHeight()*7/20
SetSpritePosition(elementstatback, elementstatbackx, elementstatbacky)
SetSpriteColorAlpha(elementstatback, 0)

	// Active Text //
activetext = CreateText("ACTIVE:")
SetTextColor(activetext, 255, 215, 0, 0)
SetTextSize(activetext, 50)
activetextx = 10
activetexty = elementstatbacky + GetSpriteHeight(elementstatback)/8 - GetTextTotalHeight(activetext)/2
SetTextPosition(activetext, activetextx, activetexty)

	// Offense Text //
offensetext = CreateText("OFFENSE:")
SetTextColor(offensetext, 255, 215, 0, 0)
SetTextSize(offensetext, 50)
offensetextx = 10
offensetexty = elementstatbacky + GetSpriteHeight(elementstatback)*3/8 - GetTextTotalHeight(offensetext)/2
SetTextPosition(offensetext, offensetextx, offensetexty)

	// Offense stat background //
offenseback = CreateSprite(lightgrey)
SetSpriteSize(offenseback, GetVirtualWidth()*3/4, GetTextTotalHeight(offensetext))
offensebackx = GetVirtualWidth()*9/40
offensebacky = offensetexty
SetSpritePosition(offenseback, offensebackx, offensebacky)
SetSpriteColorAlpha(offenseback, 0)

	// Offense Meter //
offensemeter = CreateSprite(white)
offensemeterw = GetSpriteWidth(offenseback)
offensemeterh = GetTextTotalHeight(offensetext)
SetSpriteSize(offensemeter, offensemeterw, offensemeterh)
offensemeterx = offensebackx
offensemetery = offensebacky
SetSpritePosition(offensemeter, offensemeterx, offensemetery)
SetSpriteColorAlpha(offensemeter, 0)

	// Defense Text //
defensetext = CreateText("DEFENSE:")
SetTextColor(defensetext, 255, 215, 0, 0)
SetTextSize(defensetext, 50)
defensetextx = 10
defensetexty = elementstatbacky + GetSpriteHeight(elementstatback)*5/8 - GetTextTotalHeight(defensetext)/2
SetTextPosition(defensetext, defensetextx, defensetexty)

	// Defense stat background //
defenseback = CreateSprite(lightgrey)
SetSpriteSize(defenseback, GetVirtualWidth()*3/4, GetTextTotalHeight(defensetext))
defensebackx = GetVirtualWidth()*9/40
defensebacky = defensetexty
SetSpritePosition(defenseback, defensebackx, defensebacky)
SetSpriteColorAlpha(defenseback, 0)

	// Defense Meter //
defensemeter = CreateSprite(white)
defensemeterw = GetSpriteWidth(defenseback)
defensemeterh = GetTextTotalHeight(defensetext)
SetSpriteSize(defensemeter, defensemeterw, defensemeterh)
defensemeterx = defensebackx
defensemetery = defensebacky
SetSpritePosition(defensemeter, defensemeterx, defensemetery)
SetSpriteColorAlpha(defensemeter, 0)

	// Speed Text //
speedtext = CreateText("SPEED:")
SetTextColor(speedtext, 255, 215, 0, 0)
SetTextSize(speedtext, 50)
speedtextx = 10
speedtexty = elementstatbacky + GetSpriteHeight(elementstatback)*7/8 - GetTextTotalHeight(defensetext)/2
SetTextPosition(speedtext, speedtextx, speedtexty)

	// Speed stat background //
speedback = CreateSprite(lightgrey)
SetSpriteSize(speedback, GetVirtualWidth()*3/4, GetTextTotalHeight(speedtext))
speedbackx = GetVirtualWidth()*9/40
speedbacky = speedtexty
SetSpritePosition(speedback, speedbackx, speedbacky)
SetSpriteColorAlpha(speedback, 0)

	// Speed Meter //
speedmeter = CreateSprite(white)
speedmeterw = GetSpriteWidth(speedback)
speedmeterh = GetTextTotalHeight(speedtext)
SetSpriteSize(speedmeter, speedmeterw, speedmeterh)
speedmeterx = speedbackx
speedmetery = speedbacky
SetSpritePosition(speedmeter, speedmeterx, speedmetery)
SetSpriteColorAlpha(speedmeter, 0)

// Element Icon Highlight //
iconhighlight = CreateSprite(gold)
SetSpriteColorAlpha(iconhighlight, 0)
SetSpriteSize(iconhighlight, GetVirtualWidth()/10, GetVirtualWidth()/10)
SetSpritePosition(iconhighlight, 0, 0)

// **** Element Selection Code **** //

	// Player 1 Choice //
do
	// ** Element Icon Commands **//
	gosub elementiconcommands1

	// Confirm Button Commands //
	if GetSpriteColorAlpha(confirmbox) = 255
		if GetSpriteHitTest(confirmbox, GetPointerX(), GetPointerY()) = 1
			SetSpriteColor(confirmbox, 0, 191, 255, confirmboxalpha) // Turn into skyblue
			if GetPointerPressed() = 1
				sync()
				// Sets the confirm text opacity to 0 //
				confirmtextalpha = 0
				SetTextColorAlpha(confirmtext, confirmtextalpha)
				player1choicetextalpha = 0
				// Transition the player text between selections //
				SetTextColorAlpha(player1choicetext, player1choicetextalpha)
				player2choicetextalpha = 255
				SetTextColorAlpha(player2choicetext, player2choicetextalpha)
				// Sets the confirm box opacity to 0 //
				confirmboxalpha = 0
				SetSpriteColorAlpha(confirmbox, confirmboxalpha)
				SetSpriteColorAlpha(iconhighlight, 0)
				// Set Text Opacity //
				SetTextColorAlpha(activetext, 0)
				SetTextColorAlpha(offensetext, 0)
				SetTextColorAlpha(defensetext, 0)
				SetTextColorAlpha(speedtext, 0)
				// Set Sprite Opacity //
				SetSpriteColorAlpha(elementstatback, 0)
				SetSpriteColorAlpha(offenseback, 0)
				SetSpriteColorAlpha(offensemeter, 0)
				SetSpriteColorAlpha(defenseback, 0)
				SetSpriteColorAlpha(defensemeter, 0)
				SetSpriteColorAlpha(speedback, 0)
				SetSpriteColorAlpha(speedmeter, 0)
				exit
			endif
		else
			SetSpriteColor(confirmbox, 32, 64, 67, confirmboxalpha)
		endif
	endif

	sync()
loop

	// **** Player 2 Choice **** //
	// Player 2 Choice //
do
	// Element Icon Commands 2 //
	gosub elementiconcommands2

	// Confirm Button Commands //
	if GetSpriteColorAlpha(confirmbox) = 255
		if GetSpriteHitTest(confirmbox, GetPointerX(), GetPointerY()) = 1
			SetSpriteColor(confirmbox, 0, 191, 255, confirmboxalpha) // Turn into skyblue
			if GetPointerPressed() = 1				
				sync()
				timethatgamestartedat = GetSeconds()
				DeleteAllText()
				DeleteAllSprites()
				exit
			endif
		else
			SetSpriteColor(confirmbox, 32, 64, 67, confirmboxalpha)
		endif
	endif

	sync()
		
loop

// **** In-Game Sprites **** //
	// Background //
ingamebackground = CreateSprite(LoadImage("arena.png"))
SetSpriteSize(ingamebackground, GetVirtualWidth(), GetVirtualHeight())
SetSpriteDepth(ingamebackground, 10)

	// Player 1 Paddle //
player1sprite = CreateSprite(white)
if elementid1 = 1 then SetSpriteColor(player1sprite, 255, 0, 0, 255)
if elementid1 = 2 then SetSpriteColor(player1sprite, 0, 42, 255, 255)
if elementid1 = 3 then SetSpriteColor(player1sprite, 0, 255, 0, 255)
if elementid1 = 4 then SetSpriteColor(player1sprite, 255, 255, 255, 255)
SetSpriteSize(player1sprite, 10, GetVirtualHeight()/4)
player1spritex = 0
player1spritey = GetVirtualHeight()/2 - GetSpriteHeight(player1sprite)
SetSpritePosition(player1sprite, player1spritex, player1spritey)

	// Player 1 Ability Sprite //
		// Fire Ability Sprite //
if elementid1 = 1 
	fireability1 = LoadImage("fireball1.png")
	fireability1sprite = CreateSprite(fireability1)
	fireability1spritex = -GetSpriteWidth(fireability1sprite)*2
	fireability1spritey = player1spritey + GetSpriteHeight(player1sprite)/2 - GetSpriteHeight(fireability1sprite)/2
	SetSpritePosition(fireability1sprite, fireability1spritex, fireability1spritey)
	SetSpriteAnimation(fireability1sprite, 64, 14, 8)
	SetSpriteColorAlpha(fireability1sprite, 0)
	SetSpriteScale(fireability1sprite, 4, 4)
	PlaySprite(fireability1sprite, 10, 1, 1, 8)
endif
		// Earth Ability Sprite //
if elementid1 = 3
	earthability1 = LoadImage("rocks.png")
	earthability1sprite = CreateSprite(earthability1)
	earthability1spritex = -GetSpriteWidth(earthability1sprite) - 10
	earthability1spritey = 200
	SetSpritePosition(earthability1sprite, earthability1spritex, earthability1spritey)
	SetSpriteAnimation(earthability1sprite, 250, 184, 8)
	SetSpriteColorAlpha(earthability1sprite, 0)
	SetSpriteScale(earthability1sprite, 0.5, 0.5)
	PlaySprite(earthability1sprite, 10, 1, 1, 8)
endif
		// Air Ability Sprite //
if elementid1 = 4
	airability1 = LoadImage("tornado.png")
	airability1sprite = CreateSprite(airability1)
	airability1spritex = -GetSpriteWidth(airability1sprite) - 10
	airability1spritey = 0
	SetSpritePosition(airability1sprite, airability1spritex, airability1spritey)
	SetSpriteDepth(airability1sprite, 0)
	SetSpriteAnimation(airability1sprite, 350, 600, 2)
	SetSpriteColorAlpha(airability1sprite, 0)
	PlaySprite(airability1sprite, 7, 1, 1, 2)
endif

	// Player 2 Paddle //
player2sprite = CreateSprite(white)
if elementid2 = 1 then SetSpriteColor(player2sprite, 255, 0, 0, 255)
if elementid2 = 2 then SetSpriteColor(player2sprite, 0, 42, 255, 255)
if elementid2 = 3 then SetSpriteColor(player2sprite, 0, 255, 0, 255)
if elementid2 = 4 then SetSpriteColor(player2sprite, 255, 255, 255, 255)
SetSpriteSize(player2sprite, 10, GetVirtualHeight()/4)
player2spritex = GetVirtualWidth() - GetSpriteWidth(player2sprite)
player2spritey = GetVirtualHeight()/2 - GetSpriteHeight(player2sprite)/2
SetSpritePosition(player2sprite, player2spritex, player2spritey)

	// Player 2 Ability Sprite //
		// Fire Ability Sprite //
if elementid2 = 1 
	fireability2 = LoadImage("fireball2.png")
	fireability2sprite = CreateSprite(fireability2)
	fireability2spritex = GetVirtualWidth() + 10
	fireability2spritey = 0
	SetSpritePosition(fireability2sprite, fireability2spritex, fireability2spritey)
	SetSpriteAnimation(fireability2sprite, 64, 14, 8)
	SetSpriteColorAlpha(fireability2sprite, 0)
	SetSpriteScale(fireability2sprite, 4, 4)
	PlaySprite(fireability2sprite, 10, 1, 1, 8)
endif
		// Earth Ability Sprite //
if elementid2 = 3
	earthability2 = LoadImage("rocks.png")
	earthability2sprite = CreateSprite(earthability2)
	earthability2spritex = GetVirtualWidth() + 10
	earthability2spritey = 0
	SetSpritePosition(earthability2sprite, earthability2spritex, earthability2spritey)
	SetSpriteAnimation(earthability2sprite, 250, 184, 8)
	SetSpriteColorAlpha(earthability2sprite, 0)
	SetSpriteScale(earthability2sprite, 0.5, 0.5)
	PlaySprite(earthability2sprite, 10, 1, 1, 8)
endif
		// Air Ability Sprite //
if elementid2 = 4
	airability2 = LoadImage("tornado.png")
	airability2sprite = CreateSprite(airability2)
	airability2spritex = GetVirtualWidth() + 10
	airability2spritey = 0
	SetSpritePosition(airability2sprite, airability2spritex, airability2spritey)
	SetSpriteDepth(airability2sprite, 0)
	SetSpriteAnimation(airability2sprite, 350, 600, 2)
	SetSpriteColorAlpha(airability2sprite, 0)
	PlaySprite(airability2sprite, 7, 1, 1, 2)
endif

	// Ball //
ballsprite = CreateSprite(white) // Temporary ***************************************************************************************************************
SetSpriteSize(ballsprite, 30, 30)
ballspritex = GetVirtualWidth()/8
ballspritey = GetVirtualHeight()/2 - GetSpriteHeight(ballsprite)/2
SetSpritePosition(ballsprite, ballspritex, ballspritey)

	// Health Bar //
		// Player 1 //
			// Background //
player1hpbarback = CreateSprite(gold)
SetSpriteSize(player1hpbarback, GetVirtualWidth()*2/5, 20)
player1hpbarbackx = GetVirtualWidth()*9/20 - GetSpriteWidth(player1hpbarback)
player1hpbarbacky = GetVirtualHeight()*1/50
SetSpritePosition(player1hpbarback, player1hpbarbackx, player1hpbarbacky)

			// Health Meter //
player1hpbarmeter = CreateSprite(white)
if elementid1 = 1 then SetSpriteColor(player1hpbarmeter, 255, 0, 0, 255)
if elementid1 = 2 then SetSpriteColor(player1hpbarmeter, 64, 224, 208, 255)
if elementid1 = 3 then SetSpriteColor(player1hpbarmeter, 0, 255, 0, 255)
if elementid1 = 4 then SetSpriteColor(player1hpbarmeter, 255, 255, 255, 255)
player1hpbarmeterw = GetSpriteWidth(player1hpbarback) - 10
player1hpbarmeterh = GetSpriteHeight(player1hpbarback) - 10
SetSpriteSize(player1hpbarmeter, player1hpbarmeterw, player1hpbarmeterh)
player1hpbarmeterx = player1hpbarbackx + 5
player1hpbarmetery = player1hpbarbacky + GetSpriteHeight(player1hpbarback)/2 - GetSpriteHeight(player1hpbarmeter)/2
SetSpritePosition(player1hpbarmeter, player1hpbarmeterx, player1hpbarmetery)

		// Player 2 //
			// Background //
player2hpbarback = CreateSprite(gold)
SetSpriteSize(player2hpbarback, GetVirtualWidth()*2/5, 20)
player2hpbarbackx = GetVirtualWidth()*11/20 
player2hpbarbacky = GetVirtualHeight()*1/50
SetSpritePosition(player2hpbarback, player2hpbarbackx, player2hpbarbacky)

		// Health Meter //
player2hpbarmeter = CreateSprite(white)
if elementid2 = 1 then SetSpriteColor(player2hpbarmeter, 255, 0, 0, 255)
if elementid2 = 2 then SetSpriteColor(player2hpbarmeter, 64, 224, 208, 255)
if elementid2 = 3 then SetSpriteColor(player2hpbarmeter, 0, 255, 0, 255)
if elementid2 = 4 then SetSpriteColor(player2hpbarmeter, 255, 255, 255, 255)
player2hpbarmeterw = GetSpriteWidth(player2hpbarback) - 10
player2hpbarmeterh = GetSpriteHeight(player2hpbarback) - 10
SetSpriteSize(player2hpbarmeter, GetSpriteWidth(player2hpbarback) - 10, GetSpriteHeight(player2hpbarback) - 10)
player2hpbarmeterx = player2hpbarbackx + GetSpriteWidth(player2hpbarback) - GetSpriteWidth(player2hpbarmeter) - 5
player2hpbarmetery = player2hpbarbacky + GetSpriteHeight(player2hpbarback)/2 - GetSpriteHeight(player2hpbarmeter)/2
SetSpritePosition(player2hpbarmeter, player2hpbarmeterx, player2hpbarmetery)

	// Cooldown Bar //
		// Player 1 //
			// Background 1 //
player1cooldownback = CreateSprite(blue)
SetSpriteSize(player1cooldownback, GetVirtualWidth()*2/5, 20)
player1cooldownbackx = GetVirtualWidth()*9/20 - GetSpriteWidth(player1cooldownback)
player1cooldownbacky = GetVirtualHeight()*3/50
SetSpritePosition(player1cooldownback, player1cooldownbackx, player1cooldownbacky)

			// Cooldown Meter Player 1 //
player1cooldownmeter = CreateSprite(babyblue)
player1cooldownmeterw = GetSpriteWidth(player1cooldownback) - 10
player1cooldownmeterh = GetSpriteHeight(player1cooldownback) - 10
SetSpriteSize(player1cooldownmeter, player1cooldownmeterw, player1cooldownmeterh)
player1cooldownmeterx = player1cooldownbackx + GetSpriteWidth(player1cooldownback)/2 - GetSpriteWidth(player1cooldownmeter)/2
player1cooldownmetery = player1cooldownbacky + GetSpriteHeight(player1cooldownback)/2 - GetSpriteHeight(player1cooldownmeter)/2
SetSpritePosition(player1cooldownmeter, player1cooldownmeterx, player1cooldownmetery)

		// Player 2 //
			// Background 2 //
player2cooldownback = CreateSprite(blue)
SetSpriteSize(player2cooldownback, GetVirtualWidth()*2/5, 20)
player2cooldownbackx = GetVirtualWidth()*11/20
player2cooldownbacky = GetVirtualHeight()*3/50
SetSpritePosition(player2cooldownback, player2cooldownbackx, player2cooldownbacky)

			// Cooldown Meter Player 2 //
player2cooldownmeter = CreateSprite(babyblue)
player2cooldownmeterw = GetSpriteWidth(player2cooldownback) - 10
player2cooldownmeterh = GetSpriteHeight(player2cooldownback) - 10
SetSpriteSize(player2cooldownmeter, player2cooldownmeterw, player2cooldownmeterh)
player2cooldownmeterx = player2cooldownbackx + GetSpriteWidth(player2cooldownback)/2 - GetSpriteWidth(player2cooldownmeter)/2
player2cooldownmetery = player2cooldownbacky + GetSpriteHeight(player2cooldownback)/2 - GetSpriteHeight(player2cooldownmeter)/2
SetSpritePosition(player2cooldownmeter, player2cooldownmeterx, player2cooldownmetery)

			// Stage Countdown //
timeuntilnextstagetext = CreateText(str(timeuntilnextstage))
SetTextSize(timeuntilnextstagetext, 60)
SetTextColor(timeuntilnextstagetext, 255, 255, 255, 255)
timeuntilnextstagetextx = GetVirtualWidth()/2 - GetTextTotalWidth(timeuntilnextstagetext)/2
timeuntilnextstagetexty = 10
SetTextPosition(timeuntilnextstagetext, timeuntilnextstagetextx, timeuntilnextstagetexty)

// **** In-Game Commands **** //
do
	spritecollidestatus = 0		
	gosub player1movement
	gosub player1abilitycontrols
	gosub player1cooldownbarcommands
	gosub player2movement
	gosub player2abilitycontrols
	gosub player2cooldownbarcommands
	gosub ballmovement
	gosub spritecollision
	if spritecollidestatus = 0	
		gosub boundarycollision
	endif
	// Game Over Commands //
		// Player 1 is Winner //
	if player1hp <= 0 
		winnerid = 2 // "2" represents Player 2
		DeleteAllText()
		deleteallsprites()
		exit
	endif
	
		// Player2 is Winner //
	if player2hp <= 0
		winnerid = 1 // "1" represents Player 1
		DeleteAllText()
		DeleteAllSprites()
		exit
	endif

	sync()
loop
	
// **** End Screen **** //
	// Sprites //
		// End Screen Background //
endscreenback = CreateSprite(LoadImage("planetearth.png"))
SetSpriteSize(endscreenback, GetVirtualWidth(), GetVirtualHeight())

		// Winner Display //
winnertext = CreateText("insert winner here") // This text will be changed at a later stage
if winnerid = 1 then SetTextString(winnertext, "Player 1 Wins") // Player 1 Wins
if winnerid = 2 then SetTextString(winnertext, "Player 2 wins") // player 2 Wins
SetTextColor(winnertext, 255, 255, 255, 255)
SetTextSize(winnertext, 50)
winnertextx = GetVirtualWidth()/2 - GetTextTotalWidth(winnertext)/2
winnertexty = GetVirtualHeight()/2 - GetTextTotalHeight(winnertext)
SetTextPosition(winnertext, winnertextx, winnertexty)

		// Main Menu Button //
mainmenutext = CreateText("MAIN MENU")
SetTextSize(mainmenutext, 50)
SetTextColor(mainmenutext, 255, 215, 0, 255)
mainmenutextx = GetVirtualWidth()/2 - GetTextTotalWidth(mainmenutext)/2
mainmenutexty = GetVirtualHeight()/2 
SetTextPosition(mainmenutext, mainmenutextx, mainmenutexty)

	// End Screen Commands //
do
	if GetTextHitTest(mainmenutext, GetPointerX(), GetPointerY())
		SetTextSize(mainmenutext, 55)
		mainmenutextx = GetVirtualWidth()/2 - GetTextTotalWidth(mainmenutext)/2
		mainmenutexty = GetVirtualHeight()/2 
		SetTextPosition(mainmenutext, mainmenutextx, mainmenutexty)
		if GetPointerPressed() = 1
			sync()
			DeleteAllText()
			DeleteAllSprites()
			DeleteAllImages()
			exit
		endif
	else
		SetTextSize(mainmenutext, 50)
		mainmenutextx = GetVirtualWidth()/2 - GetTextTotalWidth(mainmenutext)/2
		mainmenutexty = GetVirtualHeight()/2 
		SetTextPosition(mainmenutext, mainmenutextx, mainmenutexty)
	endif
	sync()
loop

loop // Main Menu Loop //
