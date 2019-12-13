local ninjaInfoWindow = nil
local tutorialButton = nil

function init()
    connect(g_game, {onGameEnd = offline})
	



    ninjaInfoWindow = g_ui.displayUI('tutorial.otui')
    ninjaInfoWindow:hide()
        
        tutorialButton = modules.client_topmenu.addRightGameToggleButton('tutorialButton', tr('Stats'), 'icone', onoff, true)
end


function ninjaInform(protocol, opcode, buffer)
ninjaInfoWindow:getChildById('lblName'):setText('Name: '..buffer)
print(buffer)
if buffer == "1" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Kakashi')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "2" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/RockLee')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "3" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Temari')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "4" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Suigetsu')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "5" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Juugo')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "6" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Kimimaro')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "7" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Naruto')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "8" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Sasuke')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "9" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Gaara')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "10" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Itachi')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "11" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Sasori')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "12" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Neji')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "13" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Hinata')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "14" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Ino')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "15" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Kiba')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "16" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Chouji')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "17" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Sakura')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "18" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Shikamaru')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "19" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Tenten')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "20" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Shino')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "21" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Shisui')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')

elseif buffer == "22" then 
ninjaInfoWindow:getChildById('lblName'):setText(g_game.getCharacterName()) -- ou setText('ding lause')
ninjaInfoWindow:recursiveGetChildById('panelFace'):setImageSource('/images/Naruto/Obito')
ninjaInfoWindow:recursiveGetChildById('panelName'):setImageSource('/images/Naruto/02')
ninjaInfoWindow:recursiveGetChildById('panelArea'):setImageSource('/images/Naruto/01')
ninjaInfoWindow:recursiveGetChildById('panelArea2'):setImageSource('/images/Naruto/03')



end 
end

function refresh()
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('buttonVip'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setTooltip('')
ninjaInfoWindow:recursiveGetChildById('buttonVip'):setTooltip('')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('')

end

function getVille(protocol, opcode, buffer)
print(buffer)
if buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('panelVille'):setImageSource('/images/Naruto/vilas/konohavila')
elseif buffer == "2" then
ninjaInfoWindow:recursiveGetChildById('panelVille'):setImageSource('/images/Naruto/vilas/sunavila')
elseif buffer == "5" then
ninjaInfoWindow:recursiveGetChildById('panelVille'):setImageSource('/images/Naruto/vilas/otokagurevila')
elseif buffer == "7" then
ninjaInfoWindow:recursiveGetChildById('panelVille'):setImageSource('/images/Naruto/vilas/akatsukivila')
end
end

function getAkatsuki(protocol, opcode, buffer)
print(buffer)
if buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setImageSource('/images/Naruto/akatsuki')
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setTooltip('You chose the side of the Akatsuki.')
end
end

function getKage(protocol, opcode, buffer)
print(buffer)
if buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setImageSource('/images/Naruto/kage')
ninjaInfoWindow:recursiveGetChildById('buttonKageOrAkatsuki'):setTooltip('You chose the side of the Kages.')
end
end

function getBalance(protocol, opcode, buffer)
ninjaInfoWindow:getChildById('lblBalance'):setText('Bank: '..buffer)
end


function getElementSuna(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Suna')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Suna.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Suna')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Suna.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Suna')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Suna.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Suna')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Suna.')
end
end

function getElementFuuton(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Fuuton')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Fuuton.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Fuuton')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Fuuton.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Fuuton')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Fuuton.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Fuuton')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Fuuton.')
end
end

function getElementKaton(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Katon')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Katon.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Katon')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Katon.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Katon')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Katon.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Katon')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Katon.')
end
end

function getElementSuiton(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Suiton')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Suiton.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Suiton')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Suiton.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Suiton')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Suiton.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Suiton')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Suiton.')
end
end

function getElementRaiton(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Raiton')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Raiton.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Raiton')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Raiton.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Raiton')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Raiton.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Raiton')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Raiton.')
end
end

function getElementDoton(protocol, opcode, buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('elemento01'):setImageSource('/images/Naruto/Elementos/Doton')
ninjaInfoWindow:recursiveGetChildById('elemento01'):setTooltip('You have the element Doton.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('elemento02'):setImageSource('/images/Naruto/Elementos/Doton')
ninjaInfoWindow:recursiveGetChildById('elemento02'):setTooltip('You have the element Doton.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('elemento03'):setImageSource('/images/Naruto/Elementos/Doton')
ninjaInfoWindow:recursiveGetChildById('elemento03'):setTooltip('You have the element Doton.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('elemento04'):setImageSource('/images/Naruto/Elementos/Doton')
ninjaInfoWindow:recursiveGetChildById('elemento04'):setTooltip('You have the element Doton.')
end
end


function getVipDays(protocol, opcode, buffer)
print(buffer)
if buffer == "1" then
ninjaInfoWindow:recursiveGetChildById('buttonVip'):setImageSource('/images/Naruto/vip')
ninjaInfoWindow:recursiveGetChildById('buttonVip'):setTooltip('You are Player VIP')
end
end

function getPower(protocol, opcode, buffer)
ninjaInfoWindow:getChildById('lblPower'):setText('Power: '..buffer)
print(buffer)
end

function clickFly()
ninjaInfoWindow:recursiveGetChildById('flightButton'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('flightButton'):setTooltip('')
g_game.talk('!flytotemple')
end

function clickDailyGift()
ninjaInfoWindow:recursiveGetChildById('dailygiftButton'):setImageSource('')
ninjaInfoWindow:recursiveGetChildById('dailygiftButton'):setTooltip('')
g_game.talk('!dailygift')
end

function getFlight(protocol, opcode, buffer)
if buffer == "1" then
ninjaInfoWindow:recursiveGetChildById('flightButton'):setImageSource('/images/Naruto/achievements/19b')
ninjaInfoWindow:recursiveGetChildById('flightButton'):setTooltip('Click to fly to temple.')
end
end

function getDailyGift(protocol, opcode, buffer)
if buffer == "1" then
ninjaInfoWindow:recursiveGetChildById('dailygiftButton'):setImageSource('/images/Naruto/dailygift')
ninjaInfoWindow:recursiveGetChildById('dailygiftButton'):setTooltip('Click to take your Daily Gift.')
end
end



function getKills(protocol, opcode, buffer)
ninjaInfoWindow:getChildById('lblKill'):setText('Kills: '..buffer)
print(buffer)
end

function getArenaPts(protocol, opcode, buffer)
ninjaInfoWindow:getChildById('lblArenaPoints'):setText('Arena: '..buffer)
end

function getRank(protocol, opcode, buffer)
print(buffer)
if buffer == "1" then 
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('/images/Naruto/rank_d')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setTooltip('Ninja rank D, gain +10% extra damage.')
elseif buffer == "2" then 
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('/images/Naruto/rank_c')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setTooltip('Ninja rank C, gain +15% extra damage.')
elseif buffer == "3" then 
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('/images/Naruto/rank_b')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setTooltip('Ninja rank B, gain +20% extra damage.')
elseif buffer == "4" then 
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('/images/Naruto/rank_a')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setTooltip('Ninja rank A, gain +25% extra damage.')
elseif buffer == "5" then 
ninjaInfoWindow:recursiveGetChildById('panelRank'):setImageSource('/images/Naruto/rank_s')
ninjaInfoWindow:recursiveGetChildById('panelRank'):setTooltip('Ninja rank S, gain +30% extra damage.')
end
end


function terminate()
	disconnect(g_game, {onGameEnd = offline})	
        ninjaInfoWindow:destroy()
end

function onoff()
    if ninjaInfoWindow:isVisible() then
        ninjaInfoWindow:hide()
		ninjaInfoWindow:setFocusable(false)
			ProtocolGame.unregisterExtendedOpcode(120)
			ProtocolGame.unregisterExtendedOpcode(119)
			ProtocolGame.unregisterExtendedOpcode(122)
			ProtocolGame.unregisterExtendedOpcode(123)
			ProtocolGame.unregisterExtendedOpcode(124)
			ProtocolGame.unregisterExtendedOpcode(114)
			ProtocolGame.unregisterExtendedOpcode(125)
			ProtocolGame.unregisterExtendedOpcode(126)
			ProtocolGame.unregisterExtendedOpcode(127)
			ProtocolGame.unregisterExtendedOpcode(161)
			ProtocolGame.unregisterExtendedOpcode(162)
			ProtocolGame.unregisterExtendedOpcode(163)
			ProtocolGame.unregisterExtendedOpcode(164)
			ProtocolGame.unregisterExtendedOpcode(165)
			ProtocolGame.unregisterExtendedOpcode(166)
			ProtocolGame.unregisterExtendedOpcode(174)
			ProtocolGame.unregisterExtendedOpcode(181)
			ProtocolGame.unregisterExtendedOpcode(94)
			refresh()
		tutorialButton:setOn(false)
    else
        ninjaInfoWindow:show()
			ProtocolGame.registerExtendedOpcode(120, ninjaInform)
			ProtocolGame.registerExtendedOpcode(119, getBalance)
			ProtocolGame.registerExtendedOpcode(122, getVipDays)
			ProtocolGame.registerExtendedOpcode(123, getPower)
			ProtocolGame.registerExtendedOpcode(124, getRank)
			ProtocolGame.registerExtendedOpcode(114, getVille)
			ProtocolGame.registerExtendedOpcode(125, getAkatsuki)
			ProtocolGame.registerExtendedOpcode(126, getKage)
			ProtocolGame.registerExtendedOpcode(127, getKills)
			ProtocolGame.registerExtendedOpcode(161, getElementSuiton)
			ProtocolGame.registerExtendedOpcode(162, getElementDoton)
			ProtocolGame.registerExtendedOpcode(163, getElementFuuton)
			ProtocolGame.registerExtendedOpcode(164, getElementKaton)
			ProtocolGame.registerExtendedOpcode(165, getElementRaiton)
			ProtocolGame.registerExtendedOpcode(166, getElementSuna)
			ProtocolGame.registerExtendedOpcode(174, getFlight)
			ProtocolGame.registerExtendedOpcode(181, getDailyGift)
			ProtocolGame.registerExtendedOpcode(94, getArenaPts)
	g_game.getProtocolGame():sendExtendedOpcode(114, '')
	g_game.getProtocolGame():sendExtendedOpcode(120, '')
	g_game.getProtocolGame():sendExtendedOpcode(119, '')
	g_game.getProtocolGame():sendExtendedOpcode(122, '')
	g_game.getProtocolGame():sendExtendedOpcode(123, '')
	g_game.getProtocolGame():sendExtendedOpcode(124, '')
	g_game.getProtocolGame():sendExtendedOpcode(125, '')
	g_game.getProtocolGame():sendExtendedOpcode(126, '')
	g_game.getProtocolGame():sendExtendedOpcode(127, '')
	g_game.getProtocolGame():sendExtendedOpcode(161, '')
	g_game.getProtocolGame():sendExtendedOpcode(162, '')
	g_game.getProtocolGame():sendExtendedOpcode(163, '')
	g_game.getProtocolGame():sendExtendedOpcode(164, '')
	g_game.getProtocolGame():sendExtendedOpcode(165, '')
	g_game.getProtocolGame():sendExtendedOpcode(166, '')
	g_game.getProtocolGame():sendExtendedOpcode(174, '')
	g_game.getProtocolGame():sendExtendedOpcode(181, '')
	g_game.getProtocolGame():sendExtendedOpcode(94, '')
	refresh()
		tutorialButton:setOn(true)
    end
end
