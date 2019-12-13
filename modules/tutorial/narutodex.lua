NDMiniWindow = nil


function init()
					ProtocolGame.registerExtendedOpcode(128, changePicture1)
					ProtocolGame.registerExtendedOpcode(129, changePicture2)
					ProtocolGame.registerExtendedOpcode(130, changePicture3)
					ProtocolGame.registerExtendedOpcode(131, changePicture4)
					ProtocolGame.registerExtendedOpcode(132, changePicture5)
					ProtocolGame.registerExtendedOpcode(133, changePicture6)
					ProtocolGame.registerExtendedOpcode(134, changePicture7)
					ProtocolGame.registerExtendedOpcode(135, changePicture8)
					ProtocolGame.registerExtendedOpcode(136, changePicture9)
					ProtocolGame.registerExtendedOpcode(137, changePicture10)
					ProtocolGame.registerExtendedOpcode(138, changePicture11)
					ProtocolGame.registerExtendedOpcode(139, changePicture12)
					ProtocolGame.registerExtendedOpcode(140, changePicture13)
					ProtocolGame.registerExtendedOpcode(141, changePicture14)
					ProtocolGame.registerExtendedOpcode(142, changePicture15)
					ProtocolGame.registerExtendedOpcode(143, changePicture16)
					ProtocolGame.registerExtendedOpcode(144, changePicture17)
					ProtocolGame.registerExtendedOpcode(145, changePicture18)
					ProtocolGame.registerExtendedOpcode(146, changePicture19)
					ProtocolGame.registerExtendedOpcode(147, changePicture20)
					ProtocolGame.registerExtendedOpcode(57, changePicture21)
					ProtocolGame.registerExtendedOpcode(56, changePicture22)
connect(g_game, {onGameEnd = offline})
        NDMiniWindow = g_ui.displayUI('narutodex.otui')
        NDMiniWindow:hide()
       
end

function terminate()
		ProtocolGame.unregisterExtendedOpcode(128)
		ProtocolGame.unregisterExtendedOpcode(129)
		ProtocolGame.unregisterExtendedOpcode(130)
		ProtocolGame.unregisterExtendedOpcode(131)
		ProtocolGame.unregisterExtendedOpcode(132)
		ProtocolGame.unregisterExtendedOpcode(133)
		ProtocolGame.unregisterExtendedOpcode(134)
		ProtocolGame.unregisterExtendedOpcode(135)
		ProtocolGame.unregisterExtendedOpcode(136)
		ProtocolGame.unregisterExtendedOpcode(137)
		ProtocolGame.unregisterExtendedOpcode(138)
		ProtocolGame.unregisterExtendedOpcode(139)
		ProtocolGame.unregisterExtendedOpcode(140)
		ProtocolGame.unregisterExtendedOpcode(141)
		ProtocolGame.unregisterExtendedOpcode(142)
		ProtocolGame.unregisterExtendedOpcode(143)
		ProtocolGame.unregisterExtendedOpcode(144)
		ProtocolGame.unregisterExtendedOpcode(145)
		ProtocolGame.unregisterExtendedOpcode(146)
		ProtocolGame.unregisterExtendedOpcode(147)
		ProtocolGame.unregisterExtendedOpcode(57)
		ProtocolGame.unregisterExtendedOpcode(56)
disconnect(g_game, {onGameEnd = offline})
        NDMiniWindow:destroy()
end



function changePicture1(protocol, opcode, buffer)
print(buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut01'):setImageSource('/images/Naruto/coletados/Gaara')
NDMiniWindow:recursiveGetChildById('panelOut01'):setTooltip('Ninja Info\nSabaku no Gaara\nMore skill in Distance\nHealth per level: 10\nChakra per level: 30\n\nSUNA')
end
end
function changePicture2(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut02'):setImageSource('/images/Naruto/coletados/Kakashi')
NDMiniWindow:recursiveGetChildById('panelOut02'):setTooltip('Ninja Info\nHatake Kakashi\nMore skill in Taijutsu\nHealth per level: 25\nChakra per level: 15\n\nKONOHA')
end
end
function changePicture3(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut03'):setImageSource('/images/Naruto/coletados/RockLee')
NDMiniWindow:recursiveGetChildById('panelOut03'):setTooltip('Ninja Info\nRock Lee\nMore skill in Taijutsu\nHealth per level: 40\nChakra per level: 0\n\nKONOHA')
end
end
function changePicture4(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut04'):setImageSource('/images/Naruto/coletados/Temari')
NDMiniWindow:recursiveGetChildById('panelOut04'):setTooltip('Ninja Info\nTemari\nMore skill in Distance\nHealth per level: 10\nChakra per level: 30\n\nSUNA')
end
end
function changePicture5(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut05'):setImageSource('/images/Naruto/coletados/Naruto')
NDMiniWindow:recursiveGetChildById('panelOut05'):setTooltip('Ninja Info\nNaruto\nMore skill in Taijutsu\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end
function changePicture6(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut06'):setImageSource('/images/Naruto/coletados/Suigetsu')
NDMiniWindow:recursiveGetChildById('panelOut06'):setTooltip('Ninja Info\nSuigetsu\nMore skill in Ken\nHealth per level: 20\nChakra per level: 20\n\nKIRIGAKURE')
end
end
function changePicture7(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut07'):setImageSource('/images/Naruto/coletados/Juugo')
NDMiniWindow:recursiveGetChildById('panelOut07'):setTooltip('Ninja Info\nJuugo\nMore skill in Taijutsu\nHealth per level: 15\nChakra per level: 25\n\nUNKNOWN')
end
end
function changePicture8(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut08'):setImageSource('/images/Naruto/coletados/Kimimaro')
NDMiniWindow:recursiveGetChildById('panelOut08'):setTooltip('Ninja Info\nKimimaro\nMore skill in Ken\nHealth per level: 35\nChakra per level: 5\n\nUNKNOWN')
end
end
function changePicture9(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut09'):setImageSource('/images/Naruto/coletados/Sasuke')
NDMiniWindow:recursiveGetChildById('panelOut09'):setTooltip('Ninja Info\nSasuke\nMore skill in Ken\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end
function changePicture10(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut10'):setImageSource('/images/Naruto/coletados/Neji')
NDMiniWindow:recursiveGetChildById('panelOut10'):setTooltip('Ninja Info\nNeji\nMore skill in Taijutsu\nHealth per level: 35\nChakra per level: 5\n\nKONOHA')
end
end
function changePicture11(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut11'):setImageSource('/images/Naruto/coletados/Itachi')
NDMiniWindow:recursiveGetChildById('panelOut11'):setTooltip('Ninja Info\nItachi\nMore skill in Distance\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end
function changePicture12(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut12'):setImageSource('/images/Naruto/coletados/Sasori')
NDMiniWindow:recursiveGetChildById('panelOut12'):setTooltip('Ninja Info\nSasori\nMore skill in Distance\nHealth per level: 10\nChakra per level: 30\n\nSUNA')
end
end
function changePicture13(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut13'):setImageSource('/images/Naruto/coletados/Hinata')
NDMiniWindow:recursiveGetChildById('panelOut13'):setTooltip('Ninja Info\nHinata\nMore skill in Taijutsu\nHealth per level: 35\nChakra per level: 5\n\nKONOHA')
end
end
function changePicture14(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut14'):setImageSource('/images/Naruto/coletados/Sakura')
NDMiniWindow:recursiveGetChildById('panelOut14'):setTooltip('Ninja Info\nSakura\nMore skill in Taijutsu\nHealth per level: 25\nChakra per level: 15\n\nKONOHA')
end
end
function changePicture15(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut15'):setImageSource('/images/Naruto/coletados/Ino')
NDMiniWindow:recursiveGetChildById('panelOut15'):setTooltip('Ninja Info\nIno\nMore skill in Distance\nHealth per level: 15\nChakra per level: 25\n\nKONOHA')
end
end
function changePicture16(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut16'):setImageSource('/images/Naruto/coletados/Kiba')
NDMiniWindow:recursiveGetChildById('panelOut16'):setTooltip('Ninja Info\nKiba\nMore skill in Taijutsu\nHealth per level: 35\nChakra per level: 5\n\nKONOHA')
end
end
function changePicture17(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut17'):setImageSource('/images/Naruto/coletados/Chouji')
NDMiniWindow:recursiveGetChildById('panelOut17'):setTooltip('Ninja Info\nChouji\nMore skill in Taijutsu\nHealth per level: 35\nChakra per level: 5\n\nKONOHA')
end
end
function changePicture18(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut18'):setImageSource('/images/Naruto/coletados/Tenten')
NDMiniWindow:recursiveGetChildById('panelOut18'):setTooltip('Ninja Info\nTenten\nMore skill in Distance\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end
function changePicture19(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut19'):setImageSource('/images/Naruto/coletados/Shikamaru')
NDMiniWindow:recursiveGetChildById('panelOut19'):setTooltip('Ninja Info\nShikamaru\nMore skill in Distance\nHealth per level: 15\nChakra per level: 25\n\nKONOHA')
end
end
function changePicture20(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut20'):setImageSource('/images/Naruto/coletados/Shino')
NDMiniWindow:recursiveGetChildById('panelOut20'):setTooltip('Ninja Info\nShino\nMore skill in Distance\nHealth per level: 15\nChakra per level: 25\n\nKONOHA')
end
end
function changePicture21(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut21'):setImageSource('/images/Naruto/coletados/Shisui')
NDMiniWindow:recursiveGetChildById('panelOut21'):setTooltip('Ninja Info\nShisui\nMore skill in Ken\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end
function changePicture22(protocol, opcode, buffer)
if buffer == "1" then 
NDMiniWindow:recursiveGetChildById('panelOut22'):setImageSource('/images/Naruto/coletados/Obito')
NDMiniWindow:recursiveGetChildById('panelOut22'):setTooltip('Ninja Info\nObito\nMore skill in Distance\nHealth per level: 20\nChakra per level: 20\n\nKONOHA')
end
end



function onofftg()
    if NDMiniWindow:isVisible() then
        NDMiniWindow:hide()
		
    else
        NDMiniWindow:show()
g_game.getProtocolGame():sendExtendedOpcode(146, '')
g_game.getProtocolGame():sendExtendedOpcode(145, '')
g_game.getProtocolGame():sendExtendedOpcode(144, '')
g_game.getProtocolGame():sendExtendedOpcode(143, '')
g_game.getProtocolGame():sendExtendedOpcode(142, '')
g_game.getProtocolGame():sendExtendedOpcode(141, '')
g_game.getProtocolGame():sendExtendedOpcode(140, '')
g_game.getProtocolGame():sendExtendedOpcode(139, '')
g_game.getProtocolGame():sendExtendedOpcode(138, '')
g_game.getProtocolGame():sendExtendedOpcode(137, '')
g_game.getProtocolGame():sendExtendedOpcode(136, '')
g_game.getProtocolGame():sendExtendedOpcode(135, '')
g_game.getProtocolGame():sendExtendedOpcode(134, '')
g_game.getProtocolGame():sendExtendedOpcode(133, '')
g_game.getProtocolGame():sendExtendedOpcode(132, '')
g_game.getProtocolGame():sendExtendedOpcode(131, '')
g_game.getProtocolGame():sendExtendedOpcode(130, '')
g_game.getProtocolGame():sendExtendedOpcode(129, '')
g_game.getProtocolGame():sendExtendedOpcode(128, '')
g_game.getProtocolGame():sendExtendedOpcode(147, '')
g_game.getProtocolGame():sendExtendedOpcode(57, '')
g_game.getProtocolGame():sendExtendedOpcode(56, '')
    end
end