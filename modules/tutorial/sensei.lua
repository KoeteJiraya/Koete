senseiMainWindow = nil


function init()
ProtocolGame.registerExtendedOpcode(66, getHealthExp)
ProtocolGame.registerExtendedOpcode(65, getChakraExp)
ProtocolGame.registerExtendedOpcode(64, getSkillExp)
ProtocolGame.registerExtendedOpcode(63, getSpeedExp)
ProtocolGame.registerExtendedOpcode(62, getBonusExp)
ProtocolGame.registerExtendedOpcode(61, getSenseiName)
ProtocolGame.registerExtendedOpcode(60, getPupilName)
connect(g_game, {onGameEnd = offline})
        senseiMainWindow = g_ui.displayUI('sensei.otui')
        senseiMainWindow:hide()
		senseiMainWindow:getChildById('stage1'):setVisible(false)
		senseiMainWindow:getChildById('stage2'):setVisible(false)
		senseiMainWindow:getChildById('stage3'):setVisible(false)
		senseiMainWindow:getChildById('stage4'):setVisible(false)
		
		senseiMainWindow:getChildById('button1'):setVisible(false)
		senseiMainWindow:getChildById('button2'):setVisible(false)
		senseiMainWindow:getChildById('button3'):setVisible(false)
		senseiMainWindow:getChildById('button4'):setVisible(false)

		senseiMainWindow:getChildById('exp1'):setVisible(false)
		senseiMainWindow:getChildById('exp2'):setVisible(false)
		senseiMainWindow:getChildById('exp3'):setVisible(false)
		senseiMainWindow:getChildById('exp4'):setVisible(false)
		senseiMainWindow:getChildById('exp5'):setVisible(false)
		senseiMainWindow:getChildById('exp6'):setVisible(false)
		senseiMainWindow:getChildById('exp7'):setVisible(false)
       
end

function terminate()
disconnect(g_game, {onGameEnd = offline})
        senseiMainWindow:destroy()
		ProtocolGame.unregisterExtendedOpcode(66)
		ProtocolGame.unregisterExtendedOpcode(65)
		ProtocolGame.unregisterExtendedOpcode(64)
		ProtocolGame.unregisterExtendedOpcode(63)
		ProtocolGame.unregisterExtendedOpcode(62)
		ProtocolGame.unregisterExtendedOpcode(61)
		ProtocolGame.unregisterExtendedOpcode(60)
end


function getHealthExp(protocol, opcode, buffer)
if buffer == "1" then 
senseiMainWindow:getChildById('stage4'):setVisible(false)
elseif buffer == "2" then 
senseiMainWindow:getChildById('stage4'):setVisible(true)
senseiMainWindow:getChildById('stage4'):setTooltip('10%')
senseiMainWindow:recursiveGetChildById('stage4'):setImageSource('/images/Naruto/sensei/stage1')
elseif buffer == "3" then 
senseiMainWindow:getChildById('stage4'):setVisible(true)
senseiMainWindow:getChildById('stage4'):setTooltip('25%')
senseiMainWindow:recursiveGetChildById('stage4'):setImageSource('/images/Naruto/sensei/stage2')
elseif buffer == "4" then 
senseiMainWindow:getChildById('stage4'):setVisible(true)
senseiMainWindow:getChildById('stage4'):setTooltip('55%')
senseiMainWindow:recursiveGetChildById('stage4'):setImageSource('/images/Naruto/sensei/stage3')
elseif buffer == "5" then 
senseiMainWindow:getChildById('stage4'):setVisible(true)
senseiMainWindow:getChildById('stage4'):setTooltip('75%')
senseiMainWindow:recursiveGetChildById('stage4'):setImageSource('/images/Naruto/sensei/stage4')
elseif buffer == "6" then 
senseiMainWindow:getChildById('stage4'):setVisible(true)
senseiMainWindow:getChildById('stage4'):setTooltip('100%')
senseiMainWindow:recursiveGetChildById('stage4'):setImageSource('/images/Naruto/sensei/stage5')
senseiMainWindow:getChildById('button4'):setVisible(true)
end
end

function doHealthBuff()
g_game.talk('!addBonusHealth')
g_game.getProtocolGame():sendExtendedOpcode(66, '')
senseiMainWindow:getChildById('button4'):setVisible(false)
senseiMainWindow:getChildById('stage4'):setVisible(false)
end

function doChakraBuff()
g_game.talk('!addBonusChakra')
g_game.getProtocolGame():sendExtendedOpcode(65, '')
senseiMainWindow:getChildById('button3'):setVisible(false)
senseiMainWindow:getChildById('stage3'):setVisible(false)
end

function doSpeedBuff()
g_game.talk('!addBonusSpeed')
g_game.getProtocolGame():sendExtendedOpcode(63, '')
senseiMainWindow:getChildById('button2'):setVisible(false)
senseiMainWindow:getChildById('stage2'):setVisible(false)
end

function doSkillBuff()
g_game.talk('!addBonusSkill')
g_game.getProtocolGame():sendExtendedOpcode(64, '')
senseiMainWindow:getChildById('button1'):setVisible(false)
senseiMainWindow:getChildById('stage1'):setVisible(false)
end

function doExpBuff()
g_game.talk('!addBonusExp')
g_game.getProtocolGame():sendExtendedOpcode(62, '')
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
end

function getSenseiName(protocol, opcode, buffer)
senseiMainWindow:getChildById('TextSensei'):setText(''..buffer)
end

function getPupilName(protocol, opcode, buffer)
senseiMainWindow:getChildById('TextPupil'):setText(''..buffer)
end




function getChakraExp(protocol, opcode, buffer)
if buffer == "1" then 
senseiMainWindow:getChildById('stage3'):setVisible(false)
elseif buffer == "2" then 
senseiMainWindow:getChildById('stage3'):setVisible(true)
senseiMainWindow:getChildById('stage3'):setTooltip('10%')
senseiMainWindow:recursiveGetChildById('stage3'):setImageSource('/images/Naruto/sensei/stage1')
elseif buffer == "3" then 
senseiMainWindow:getChildById('stage3'):setVisible(true)
senseiMainWindow:getChildById('stage3'):setTooltip('25%')
senseiMainWindow:recursiveGetChildById('stage3'):setImageSource('/images/Naruto/sensei/stage2')
elseif buffer == "4" then 
senseiMainWindow:getChildById('stage3'):setVisible(true)
senseiMainWindow:getChildById('stage3'):setTooltip('55%')
senseiMainWindow:recursiveGetChildById('stage3'):setImageSource('/images/Naruto/sensei/stage3')
elseif buffer == "5" then 
senseiMainWindow:getChildById('stage3'):setVisible(true)
senseiMainWindow:getChildById('stage3'):setTooltip('75%')
senseiMainWindow:recursiveGetChildById('stage3'):setImageSource('/images/Naruto/sensei/stage4')
elseif buffer == "6" then 
senseiMainWindow:getChildById('stage3'):setVisible(true)
senseiMainWindow:getChildById('stage3'):setTooltip('100%')
senseiMainWindow:recursiveGetChildById('stage3'):setImageSource('/images/Naruto/sensei/stage5')
senseiMainWindow:getChildById('button3'):setVisible(true)
end
end

function getSkillExp(protocol, opcode, buffer)
if buffer == "1" then 
senseiMainWindow:getChildById('stage1'):setVisible(false)
elseif buffer == "2" then 
senseiMainWindow:getChildById('stage1'):setVisible(true)
senseiMainWindow:getChildById('stage1'):setTooltip('10%')
senseiMainWindow:recursiveGetChildById('stage1'):setImageSource('/images/Naruto/sensei/stage1')
elseif buffer == "3" then 
senseiMainWindow:getChildById('stage1'):setVisible(true)
senseiMainWindow:getChildById('stage1'):setTooltip('25%')
senseiMainWindow:recursiveGetChildById('stage1'):setImageSource('/images/Naruto/sensei/stage2')
elseif buffer == "4" then 
senseiMainWindow:getChildById('stage1'):setVisible(true)
senseiMainWindow:getChildById('stage1'):setTooltip('55%')
senseiMainWindow:recursiveGetChildById('stage1'):setImageSource('/images/Naruto/sensei/stage3')
elseif buffer == "5" then 
senseiMainWindow:getChildById('stage1'):setVisible(true)
senseiMainWindow:getChildById('stage1'):setTooltip('75%')
senseiMainWindow:recursiveGetChildById('stage1'):setImageSource('/images/Naruto/sensei/stage4')
elseif buffer == "6" then 
senseiMainWindow:getChildById('stage1'):setVisible(true)
senseiMainWindow:getChildById('stage1'):setTooltip('100%')
senseiMainWindow:recursiveGetChildById('stage1'):setImageSource('/images/Naruto/sensei/stage5')
senseiMainWindow:getChildById('button1'):setVisible(true)
end
end

function getSpeedExp(protocol, opcode, buffer)
if buffer == "1" then 
senseiMainWindow:getChildById('stage2'):setVisible(false)
elseif buffer == "2" then 
senseiMainWindow:getChildById('stage2'):setVisible(true)
senseiMainWindow:getChildById('stage2'):setTooltip('10%')
senseiMainWindow:recursiveGetChildById('stage2'):setImageSource('/images/Naruto/sensei/stage1')
elseif buffer == "3" then 
senseiMainWindow:getChildById('stage2'):setVisible(true)
senseiMainWindow:getChildById('stage2'):setTooltip('25%')
senseiMainWindow:recursiveGetChildById('stage2'):setImageSource('/images/Naruto/sensei/stage2')
elseif buffer == "4" then 
senseiMainWindow:getChildById('stage2'):setVisible(true)
senseiMainWindow:getChildById('stage2'):setTooltip('55%')
senseiMainWindow:recursiveGetChildById('stage2'):setImageSource('/images/Naruto/sensei/stage3')
elseif buffer == "5" then 
senseiMainWindow:getChildById('stage2'):setVisible(true)
senseiMainWindow:getChildById('stage2'):setTooltip('75%')
senseiMainWindow:recursiveGetChildById('stage2'):setImageSource('/images/Naruto/sensei/stage4')
elseif buffer == "6" then 
senseiMainWindow:getChildById('stage2'):setVisible(true)
senseiMainWindow:getChildById('stage2'):setTooltip('100%')
senseiMainWindow:recursiveGetChildById('stage2'):setImageSource('/images/Naruto/sensei/stage5')
senseiMainWindow:getChildById('button2'):setVisible(true)
end
end

function getBonusExp(protocol, opcode, buffer)
if buffer == "1" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "2" then 
senseiMainWindow:getChildById('exp1'):setVisible(true)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "3" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(true)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "4" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(true)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "5" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(true)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "6" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(true)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "7" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(true)
senseiMainWindow:getChildById('exp7'):setVisible(false)
elseif buffer == "8" then 
senseiMainWindow:getChildById('exp1'):setVisible(false)
senseiMainWindow:getChildById('exp2'):setVisible(false)
senseiMainWindow:getChildById('exp3'):setVisible(false)
senseiMainWindow:getChildById('exp4'):setVisible(false)
senseiMainWindow:getChildById('exp5'):setVisible(false)
senseiMainWindow:getChildById('exp6'):setVisible(false)
senseiMainWindow:getChildById('exp7'):setVisible(true)
end
end

function onoffsensei()
    if senseiMainWindow:isVisible() then
		senseiMainWindow:getChildById('button1'):setVisible(false)
		senseiMainWindow:getChildById('button2'):setVisible(false)
		senseiMainWindow:getChildById('button3'):setVisible(false)
		senseiMainWindow:getChildById('button4'):setVisible(false)
        senseiMainWindow:hide()
    else
        senseiMainWindow:show()
		g_game.getProtocolGame():sendExtendedOpcode(66, '')
		g_game.getProtocolGame():sendExtendedOpcode(65, '')
		g_game.getProtocolGame():sendExtendedOpcode(64, '')
		g_game.getProtocolGame():sendExtendedOpcode(63, '')
		g_game.getProtocolGame():sendExtendedOpcode(62, '')
		g_game.getProtocolGame():sendExtendedOpcode(61, '')
		g_game.getProtocolGame():sendExtendedOpcode(60, '')
    end
end