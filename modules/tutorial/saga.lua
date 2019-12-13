sagaMainWindow = nil


function init()
connect(g_game, {onGameEnd = offline})
        sagaMainWindow = g_ui.displayUI('saga.otui')
        sagaMainWindow:hide()
       
end

function terminate()
disconnect(g_game, {onGameEnd = offline})
        sagaMainWindow:destroy()
end


local config = {
--[buffer] = { local da imagem, Testo do progresso, Testo do premio}
["1"] = { '/images/Naruto/saga/01', 'First of all, you need take level 8.', '500 EXP'},
["2"] = { '/images/Naruto/saga/01', 'Now choose your character.', '500 EXP'},


["3"] = { '/images/Naruto/saga/02', 'Talk to the Kage of your village.', '1000 EXP'},
["4"] = { '/images/Naruto/saga/02', 'Buy a Knife with Kyo and collect some flowers. \nDone it, use the mold chakra table \nto create Health row or Chakra pill.', '1000 EXP'},
["5"] = { '/images/Naruto/saga/02', 'Report to kage of your village.', '1000 EXP'},
["6"] = { '/images/Naruto/saga/02', 'Look your eye \nto see the passive of your character.', '1000 EXP'},
["7"] = { '/images/Naruto/saga/02', 'Report to kage of your village.', '1000 EXP'},
["8"] = { '/images/Naruto/saga/02', 'You need find Shizune \nto know how learn a jutsu of heal.', '1000 EXP'},


["9"] = { '/images/Naruto/saga/03', 'Talk with your kage.', '2000 EXP, 1000 YEN'},
["10"] = { '/images/Naruto/saga/03', 'Find the Shijimi \nand help her to catch your cat called Tora.', '2000 EXP, 1000 YEN'},
["11"] = { '/images/Naruto/saga/03', 'Use the cookie to cath Tora.', '2000 EXP, 1000 YEN'},
["12"] = { '/images/Naruto/saga/03', 'Return Torah to Shijimi.', '2000 EXP, 1000 YEN'},
["13"] = { '/images/Naruto/saga/03', 'Report to Hokage.', '2000 EXP, 1000 YEN'},


["14"] = { '/images/Naruto/saga/04', 'Find and defeat Konohamaru.', '4000 EXP, KONOHAMARU SHIRT, KONOHAMARU HAT'},
["15"] = { '/images/Naruto/saga/04', 'Step in the black floor.', '4000 EXP, KONOHAMARU SHIRT, KONOHAMARU HAT'},


["16"] = { '/images/Naruto/saga/05', 'Talk with Mizuki.', '8000 EXP'},
["17"] = { '/images/Naruto/saga/05', 'Take the Nidaime Scroll inthe hokage room.', '8000 EXP'},
["18"] = { '/images/Naruto/saga/05', 'Deliver the scroll to Mizuki.', '8000 EXP'},
["19"] = { '/images/Naruto/saga/05', 'Defeat Mizuki.', '8000 EXP'},
["20"] = { '/images/Naruto/saga/05', 'Step in the black floor.', '8000 EXP'},


["21"] = { '/images/Naruto/saga/06', 'Talk with Hokage.', '16000 EXP, KAKASHI MASK'},
["22"] = { '/images/Naruto/saga/06', 'Defeat Kakashi and take the bell.', '16000 EXP, KAKASHI MASK'},
["23"] = { '/images/Naruto/saga/06', 'Take the bell and step in the black floor.', '16000 EXP, KAKASHI MASK'},
["24"] = { '/images/Naruto/saga/06', 'Deliver the bell to Kakashi.', '16000 EXP, KAKASHI MASK'},


["25"] = { '/images/Naruto/saga/07', 'Talk with Hokage.', '32000 EXP, ZABUZA KEN'},
["26"] = { '/images/Naruto/saga/07', 'Talk with Tazuna.', '32000 EXP, ZABUZA KEN'},
["27"] = { '/images/Naruto/saga/07', 'Talk with Kakashi.', '32000 EXP, ZABUZA KEN'},
["28"] = { '/images/Naruto/saga/07', 'Talk with Kakashi in the southeast of Konoha.', '32000 EXP, ZABUZA KEN'},
["29"] = { '/images/Naruto/saga/07', 'Defeat Zabuza.', '32000 EXP, ZABUZA KEN'},
["30"] = { '/images/Naruto/saga/07', 'Step in the black floor.', '32000 EXP, ZABUZA KEN'},
["31"] = { '/images/Naruto/saga/07', 'Zabuza escaped. \nFind him in the bridge and defeat him.', '32000 EXP, ZABUZA KEN'},
["32"] = { '/images/Naruto/saga/07', 'Step in the black floor.', '32000 EXP, ZABUZA KEN'},


["33"] = { '/images/Naruto/saga/08', 'Talk with Hokage.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["34"] = { '/images/Naruto/saga/08', 'Help Kakashi.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["35"] = { '/images/Naruto/saga/08', 'Step in the black floor.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["36"] = { '/images/Naruto/saga/08', 'Help Guy Sensei.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["37"] = { '/images/Naruto/saga/08', 'Step in the black floor.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["38"] = { '/images/Naruto/saga/08', 'Help Sandaime or Orochimaru in the roof of Konoha. \nMake your choise.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},
["39"] = { '/images/Naruto/saga/08', 'Step in the black floor.', '64000 EXP, SANDAIME OR OROCHIMARU SET'},


["40"] = { '/images/Naruto/saga/09', 'Talk with Tsunade.', '128000 EXP'},
["41"] = { '/images/Naruto/saga/09', 'Find and defeat Kisame and Itachi.', '128000 EXP'},
["42"] = { '/images/Naruto/saga/09', 'Step in the black floor.', '128000 EXP'},


["43"] = { '/images/Naruto/saga/10', 'Talk with Tsunade.', '256000 EXP, 50.000 YEN'},
["44"] = { '/images/Naruto/saga/10', 'Find and kill Jiroubou.', '256000 EXP, 50.000 YEN'},
["45"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},
["46"] = { '/images/Naruto/saga/10', 'Find and kill Kidoumaru.', '256000 EXP, 50.000 YEN'},
["47"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},
["48"] = { '/images/Naruto/saga/10', 'Find and kill Sakon and Ukon.', '256000 EXP, 50.000 YEN'},
["49"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},
["50"] = { '/images/Naruto/saga/10', 'Find and kill Tayuya.', '256000 EXP, 50.000 YEN'},
["51"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},
["52"] = { '/images/Naruto/saga/10', 'Find and kill Kimimaro.', '256000 EXP, 50.000 YEN'},
["53"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},
["54"] = { '/images/Naruto/saga/10', 'Find and fight against Sasuke.', '256000 EXP, 50.000 YEN'},
["55"] = { '/images/Naruto/saga/10', 'Step in the black floor.', '256000 EXP, 50.000 YEN'},


["56"] = { '/images/Naruto/saga/11', 'Talk with Tsunade.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["57"] = { '/images/Naruto/saga/11', 'Talk with Kazekage.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["58"] = { '/images/Naruto/saga/11', 'Find and Kill Deidara.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["59"] = { '/images/Naruto/saga/11', 'Step on the black floor.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["60"] = { '/images/Naruto/saga/11', 'Talk with Kazekage.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["61"] = { '/images/Naruto/saga/11', 'Talk with Tsunade.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["62"] = { '/images/Naruto/saga/11', 'Talk with guy sensei.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["63"] = { '/images/Naruto/saga/11', 'Find the cave of Sasori and kill him.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
["64"] = { '/images/Naruto/saga/11', 'Step on the black floor.', '512000 EXP, \nACHIEVEMENT: CHIYO BAA CHAKRA OF LIFE'},
}


function sagaStatus01(protocol, opcode, buffer)
local buf = config[buffer]


if buf then
sagaMainWindow:recursiveGetChildById('panelSaga1'):setImageSource(buf[1])
sagaMainWindow:getChildById('panelSaga2'):setText(buf[2])
sagaMainWindow:getChildById('panelSaga3'):setText(buf[3])
end
end








function onoffsaga()
    if sagaMainWindow:isVisible() then
        sagaMainWindow:hide()
		ProtocolGame.unregisterExtendedOpcode(148)
    else
        sagaMainWindow:show()
					ProtocolGame.registerExtendedOpcode(148, sagaStatus01)
g_game.getProtocolGame():sendExtendedOpcode(148, '')
    end
end