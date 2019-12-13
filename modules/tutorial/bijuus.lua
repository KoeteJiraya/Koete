BijuuMainWindow = nil


function init()
						ProtocolGame.registerExtendedOpcode(160, getPageBijuu)
						ProtocolGame.registerExtendedOpcode(178, checkPoints)
						ProtocolGame.registerExtendedOpcode(104, getBijuuEvolution)
connect(g_game, {onGameEnd = offline})
        BijuuMainWindow = g_ui.displayUI('bijuus.otui')
        BijuuMainWindow:hide()
       
end

function terminate()
		ProtocolGame.unregisterExtendedOpcode(160)
		ProtocolGame.unregisterExtendedOpcode(178)
		ProtocolGame.unregisterExtendedOpcode(104)
disconnect(g_game, {onGameEnd = offline})
        BijuuMainWindow:destroy()
end



function getPageBijuu(protocol, opcode, buffer)
if buffer == "1" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/01')

elseif buffer == "2" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/02')

elseif buffer == "3" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/03')

elseif buffer == "4" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/04')

elseif buffer == "5" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/05')

elseif buffer == "6" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/06')

elseif buffer == "7" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/07')

elseif buffer == "8" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/08')

elseif buffer == "9" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/09')

elseif buffer == "10" then 
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('/images/Naruto/bijuus/10')
end
end



function goBijuuButton()
g_game.talk('!gobijuucliente')
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu3'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu4'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu5'):setImageSource('')
g_game.getProtocolGame():sendExtendedOpcode(160, '')
g_game.getProtocolGame():sendExtendedOpcode(178, '')
g_game.getProtocolGame():sendExtendedOpcode(104, '')
end
function backBijuuButton()
g_game.talk('!backbijuucliente')
BijuuMainWindow:recursiveGetChildById('panelBijuu'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu3'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu4'):setImageSource('')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu5'):setImageSource('')
g_game.getProtocolGame():sendExtendedOpcode(160, '')
g_game.getProtocolGame():sendExtendedOpcode(178, '')
g_game.getProtocolGame():sendExtendedOpcode(104, '')
end

function checkPoints(protocol, opcode, buffer)
BijuuMainWindow:getChildById('lblBijuuPts'):setText(''..buffer)
end
function buyChakraPts()
g_game.talk('!buychakrawithpts')
g_game.getProtocolGame():sendExtendedOpcode(160, '')
g_game.getProtocolGame():sendExtendedOpcode(178, '')
end

function getBijuuEvolution(protocol, opcode, buffer)
if buffer == "1" then 
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('/images/Naruto/bijuus/evolution1')
elseif buffer == "2" then 
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('/images/Naruto/bijuus/evolution1')
elseif buffer == "3" then 
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu3'):setImageSource('/images/Naruto/bijuus/evolution1')
elseif buffer == "4" then 
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu3'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu4'):setImageSource('/images/Naruto/bijuus/evolution1')
elseif buffer == "5" then 
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu1'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu2'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu3'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu4'):setImageSource('/images/Naruto/bijuus/evolution1')
BijuuMainWindow:recursiveGetChildById('evolutionChakraBijuu5'):setImageSource('/images/Naruto/bijuus/evolution1')
end
end

function onoffbijuu()
    if BijuuMainWindow:isVisible() then
        BijuuMainWindow:hide()
    else
g_game.getProtocolGame():sendExtendedOpcode(160, '')
g_game.getProtocolGame():sendExtendedOpcode(178, '')
g_game.getProtocolGame():sendExtendedOpcode(104, '')
        BijuuMainWindow:show()
    end
end