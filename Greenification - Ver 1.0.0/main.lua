
display.setStatusBar( display.HiddenStatusBar )

_W = display.contentWidth
_H = display.contentHeight


local composer = require "composer"

composer.gotoScene( "manufacturerSelectScreen", "fade", 400 )

--
--[[

ramUsage = display.newText( "0", 0, 0, native.systemFont, 100 )
ramUsage.x = _W*0.5+ 500 ; ramUsage.y = _H*0.5-500
ramUsage:setFillColor( 1, 1, 1 )
ramUsage.anchorX = 0

function memoryUsageTest()
  print("Memory USAGE: "..(system.getInfo("textureMemoryUsed")/1000000).." mb");
  ramUsage.text = (system.getInfo("textureMemoryUsed")/1000000)
end
--timer.performWithDelay(1000, memoryUsageTest, 0)
--]]