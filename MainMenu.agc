
// Color Shifting for start screen background //
/*
startscreenbackgroundcolor:
	if GetSpriteColorRed(startscreenbackground) >= 255
		if GetSpriteColorBlue(startscreenbackground) >= 1
			SetSpriteColorBlue(startscreenbackground, GetSpriteColorBlue(startscreenbackground) - 1)
		else
			if GetSpriteColorGreen(startscreenbackground) < 255
				SetSpriteColorGreen(startscreenbackground, GetSpriteColorGreen(startscreenbackground) + 1)
			endif
		endif
	endif
	if GetSpriteColorGreen(startscreenbackground) >= 255
		if GetSpriteColorRed(startscreenbackground) >= 1
			SetSpriteColorRed(startscreenbackground, GetSpriteColorRed(startscreenbackground) - 1)
		else
			if GetSpriteColorBlue(startscreenbackground) < 255
				SetSpriteColorBlue(startscreenbackground, GetSpriteColorBlue(startscreenbackground) + 1)
			endif
		endif
	endif
	if GetSpriteColorBlue(startscreenbackground) >= 255
		if GetSpriteColorGreen(startscreenbackground) >= 1
			SetSpriteColorGreen(startscreenbackground, GetSpriteColorGreen(startscreenbackground) - 1)
		else
			if GetSpriteColorRed(startscreenbackground) < 255
				SetSpriteColorRed(startscreenbackground, GetSpriteColorRed(startscreenbackground) + 1)
			endif
		endif
	endif
return
*/


// color shifting for title //
titlecolor:
	if GetTextColorRed(startscreenbackground) >= 255
		if GetTextColorBlue(startscreenbackground) >= 1
			SetTextColorBlue(startscreenbackground, GetTextColorBlue(startscreenbackground) - 1)
		else
			if GetTextColorGreen(startscreenbackground) < 255
				SetTextColorGreen(startscreenbackground, GetTextColorGreen(startscreenbackground) + 1)
			endif
		endif
	endif
	if GetTextColorGreen(startscreenbackground) >= 255
		if GetTextColorRed(startscreenbackground) >= 1
			SetTextColorRed(startscreenbackground, GetTextColorRed(startscreenbackground) - 1)
		else
			if GetTextColorBlue(startscreenbackground) < 255
				SetTextColorBlue(startscreenbackground, GetTextColorBlue(startscreenbackground) + 1)
			endif
		endif
	endif
	if GetTextColorBlue(startscreenbackground) >= 255
		if GetTextColorGreen(startscreenbackground) >= 1
			SetTextColorGreen(startscreenbackground, GetTextColorGreen(startscreenbackground) - 1)
		else
			if GetTextColorRed(startscreenbackground) < 255
				SetTextColorRed(startscreenbackground, GetTextColorRed(startscreenbackground) + 1)
			endif
		endif
	endif
return

tutorialbuttoncommands:
	if GetTextHitTest(tutorialtext, GetPointerX(), GetPointerY())
		SetTextSize(tutorialtext, 60)
		tutorialtextx = GetVirtualWidth()/2 - GetTextTotalWidth(tutorialtext)/2
		tutorialtexty = GetVirtualHeight()*13/20
		SetTextPosition(tutorialtext, tutorialtextx, tutorialtexty)
		if GetPointerPressed() = 1
			sync()
			SetSpriteColorAlpha(tutorialback, 255)
			SetTextColorAlpha(backtext, 255)
						// Left Page Color //
			SetTextColorAlpha(leftpagetitle, 255)
			SetTextColorAlpha(leftpagetext1, 255)
			SetTextColorAlpha(leftpagetext2, 255)
			SetTextColorAlpha(leftpagetext3, 255)
			SetTextColorAlpha(leftpagetext4, 255)
			SetTextColorAlpha(leftpagetext5, 255)
			SetTextColorAlpha(leftpagetext6, 255)
				
				// Right Page Color //
			SetTextColorAlpha(rightpagetitle, 255)
			SetTextColorAlpha(rightpagetext1, 255)
			SetTextColorAlpha(rightpagetext2, 255)
			SetTextColorAlpha(rightpagetext3, 255)
			SetTextColorAlpha(rightpagetext4, 255)
			SetTextColorAlpha(rightpagetext5, 255)
		endif
	else
		SetTextSize(tutorialtext, 50)
		tutorialtextx = GetVirtualWidth()/2 - GetTextTotalWidth(tutorialtext)/2
		tutorialtexty = GetVirtualHeight()*13/20
		SetTextPosition(tutorialtext, tutorialtextx, tutorialtexty)
	endif
return

backbuttoncommands:
	if GetTextHitTest(backtext, GetPointerX(), GetPointerY())
		SetTextSize(backtext, 55)
		backtextx = GetVirtualWidth()/2 - GetTextTotalWidth(backtext)/2
		backtexty = GetVirtualHeight()*4/5 - GetTextTotalHeight(backtext)
		SetTextPosition(backtext, backtextx, backtexty)
		if GetPointerPressed() = 1
			sync()
			SetSpriteColorAlpha(tutorialback, 0)
			SetTextColorAlpha(backtext, 0)
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
		endif
	else
		SetTextSize(backtext, 50)
		backtextx = GetVirtualWidth()/2 - GetTextTotalWidth(backtext)/2
		backtexty = GetVirtualHeight()*4/5 - GetTextTotalHeight(backtext)
		SetTextPosition(backtext, backtextx, backtexty)
	endif
return
