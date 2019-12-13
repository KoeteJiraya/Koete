achievementsMainWindow = nil


function init()
connect(g_game, {onGameEnd = offline})
        achievementsMainWindow = g_ui.displayUI('achievements.otui')
        achievementsMainWindow:hide()
       
end

function terminate()
disconnect(g_game, {onGameEnd = offline})
        achievementsMainWindow:destroy()
end

function attachievements()
achievementsMainWindow:recursiveGetChildById('button01'):setImageSource('/images/Naruto/achievements/out/01')
achievementsMainWindow:recursiveGetChildById('button01'):setTooltip('Unknown')
achievementsMainWindow:recursiveGetChildById('button02'):setImageSource('/images/Naruto/achievements/out/02')
achievementsMainWindow:recursiveGetChildById('button02'):setTooltip('Complete the part of saga that you defeats Sasori')
achievementsMainWindow:recursiveGetChildById('button03'):setImageSource('/images/Naruto/achievements/out/03')
achievementsMainWindow:recursiveGetChildById('button03'):setTooltip('Manufacture 10.000 Health Roll')
achievementsMainWindow:recursiveGetChildById('button04'):setImageSource('/images/Naruto/achievements/out/04')
achievementsMainWindow:recursiveGetChildById('button04'):setTooltip('Manufacture 10.000 Chakra Pill')
achievementsMainWindow:recursiveGetChildById('button05'):setImageSource('/images/Naruto/achievements/out/05')
achievementsMainWindow:recursiveGetChildById('button05'):setTooltip('Farm 1.000 roses')
achievementsMainWindow:recursiveGetChildById('button06'):setImageSource('/images/Naruto/achievements/out/06')
achievementsMainWindow:recursiveGetChildById('button06'):setTooltip('Ninja Rank B')
achievementsMainWindow:recursiveGetChildById('button07'):setImageSource('/images/Naruto/achievements/out/07')
achievementsMainWindow:recursiveGetChildById('button07'):setTooltip('Complete the quest "Helping the Garbageman"')
achievementsMainWindow:recursiveGetChildById('button08'):setImageSource('/images/Naruto/achievements/out/08')
achievementsMainWindow:recursiveGetChildById('button08'):setTooltip('Graduate ANBU')
achievementsMainWindow:recursiveGetChildById('button09'):setImageSource('/images/Naruto/achievements/out/09')
achievementsMainWindow:recursiveGetChildById('button09'):setTooltip('Unknown')
achievementsMainWindow:recursiveGetChildById('button10'):setImageSource('/images/Naruto/achievements/out/10')
achievementsMainWindow:recursiveGetChildById('button10'):setTooltip('Eat the perfect food')
achievementsMainWindow:recursiveGetChildById('button11'):setImageSource('/images/Naruto/achievements/out/11')
achievementsMainWindow:recursiveGetChildById('button11'):setTooltip('Ninja Rank S')
achievementsMainWindow:recursiveGetChildById('button12'):setImageSource('/images/Naruto/achievements/out/12')
achievementsMainWindow:recursiveGetChildById('button12'):setTooltip('Appears sometimes in the shop')
achievementsMainWindow:recursiveGetChildById('button13'):setImageSource('/images/Naruto/achievements/out/13')
achievementsMainWindow:recursiveGetChildById('button13'):setTooltip('Complete the quest "Karu: The king of Forge"')
achievementsMainWindow:recursiveGetChildById('button14'):setImageSource('/images/Naruto/achievements/out/14')
achievementsMainWindow:recursiveGetChildById('button14'):setTooltip('Make 10 itens with chakra of any Bijuu')
achievementsMainWindow:recursiveGetChildById('button15'):setImageSource('/images/Naruto/achievements/out/15')
achievementsMainWindow:recursiveGetChildById('button15'):setTooltip('Finds the "Takana" and becomes a official')
achievementsMainWindow:recursiveGetChildById('button16'):setImageSource('/images/Naruto/achievements/out/16')
achievementsMainWindow:recursiveGetChildById('button16'):setTooltip('Buy vip at last one time')
achievementsMainWindow:recursiveGetChildById('button17'):setImageSource('/images/Naruto/achievements/out/17')
achievementsMainWindow:recursiveGetChildById('button17'):setTooltip('Kill 1000 players in arena')
achievementsMainWindow:recursiveGetChildById('button18'):setImageSource('/images/Naruto/achievements/out/18')
achievementsMainWindow:recursiveGetChildById('button18'):setTooltip('Answer 100 questions')
achievementsMainWindow:recursiveGetChildById('button19'):setImageSource('/images/Naruto/achievements/out/19')
achievementsMainWindow:recursiveGetChildById('button19'):setTooltip('Buy it in the shop sometimes')
achievementsMainWindow:recursiveGetChildById('button20'):setImageSource('/images/Naruto/achievements/out/20')
achievementsMainWindow:recursiveGetChildById('button20'):setTooltip('Choose a side: Akatsuki or Kage.')
end

function apprenticeKabuto(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button01'):setImageSource('/images/Naruto/achievements/01')
achievementsMainWindow:recursiveGetChildById('button01'):setTooltip('Apprentice of Poison: Gives to you 5% of chance to poison the enemy.')
end 
end

function healthRow(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button03'):setImageSource('/images/Naruto/achievements/03')
achievementsMainWindow:recursiveGetChildById('button03'):setTooltip('Master of Healing: Doubles the effect of health row.')
end 
end

function chakraPill(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button04'):setImageSource('/images/Naruto/achievements/04')
achievementsMainWindow:recursiveGetChildById('button04'):setTooltip('Master of Chakra: Doubles the effect of chakra pill.')
end 
end

function goldenTooth(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button07'):setImageSource('/images/Naruto/achievements/07')
achievementsMainWindow:recursiveGetChildById('button07'):setTooltip('Golden Tooth: Earn deposited +50 cash for every enemy killed.')
end 
end

function permissionKaruShukaku(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button13'):setImageSource('/images/Naruto/achievements/13')
achievementsMainWindow:recursiveGetChildById('button13'):setTooltip('My First Bijuu: Gives to you the permission to talk with Karu the king of forge.')
end 
end

function arrestPermission(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button15'):setImageSource('/images/Naruto/achievements/15')
achievementsMainWindow:recursiveGetChildById('button15'):setTooltip('Arrest Permission: Gives to you the permission to fight against fugitive prisoners.')
end 
end

function teleporteTemple(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button19'):setImageSource('/images/Naruto/achievements/19')
achievementsMainWindow:recursiveGetChildById('button19'):setTooltip('Traveling Fast: Gives to you the permission to flight back to home every two hours.')
end 
end

function passageVip(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button12'):setImageSource('/images/Naruto/achievements/12')
achievementsMainWindow:recursiveGetChildById('button12'):setTooltip('Member Pass: Gives to you the permission to enter in the area Vip forever.')
end 
end

function lifeOrb(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button02'):setImageSource('/images/Naruto/achievements/02')
achievementsMainWindow:recursiveGetChildById('button02'):setTooltip('Chiyo Baa Chakra of Life: Gives to you 20 % of chance to prevent your death by sending you to temple.')
end 
end

function doubleCollect(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button05'):setImageSource('/images/Naruto/achievements/05')
achievementsMainWindow:recursiveGetChildById('button05'):setTooltip('Master of Gardenish: Gives to you double collect of any thing. You can now cultivate some things.')
end 
end

function rankS(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button11'):setImageSource('/images/Naruto/achievements/11')
achievementsMainWindow:recursiveGetChildById('button11'):setTooltip('Ninja Rank S: When you kill a monster will gain 5% of Chakra/HP about your Max Chakra/HP\nBut when you kill a player will gain 100%.')
end 
end

function questionsKoete(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button18'):setImageSource('/images/Naruto/achievements/18')
achievementsMainWindow:recursiveGetChildById('button18'):setTooltip('The knowledge: You can take the Daily Gift.')
end 
end

function vipAtLastOneTime(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button16'):setImageSource('/images/Naruto/achievements/16')
achievementsMainWindow:recursiveGetChildById('button16'):setTooltip('Everything its takes: unknown.')
end 
end

function getRankDMarket(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button06'):setImageSource('/images/Naruto/achievements/06')
achievementsMainWindow:recursiveGetChildById('button06'):setTooltip('Merchant Man: Permission to sell things in the global market.')
end 
end

function getBingoBook(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button08'):setImageSource('/images/Naruto/achievements/08')
achievementsMainWindow:recursiveGetChildById('button08'):setTooltip('Bingo Book: Permission to use the bingo book to kill greatest ninjas.')
end 
end

function getKillFood(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button10'):setImageSource('/images/Naruto/achievements/10')
achievementsMainWindow:recursiveGetChildById('button10'):setTooltip('The Greatest Food: Be fed at any monster killed by you.')
end 
end

function getCritical(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button20'):setImageSource('/images/Naruto/achievements/20')
achievementsMainWindow:recursiveGetChildById('button20'):setTooltip('I got bloods in my hand: Have 5% of chance to hit a critical attack.')
end 
end

function getBijuuChakraControl(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button14'):setImageSource('/images/Naruto/achievements/14')
achievementsMainWindow:recursiveGetChildById('button14'):setTooltip('Feeling the Power: You have the permission to Talk with Kousan and train control the chakra of bijuus.')
end 
end

function getArenaPermission(protocol, opcode, buffer)
if buffer == "1" then 
achievementsMainWindow:recursiveGetChildById('button17'):setImageSource('/images/Naruto/achievements/17')
achievementsMainWindow:recursiveGetChildById('button17'):setTooltip('Starting the train of Killer: You have the permission to fight in arena.')
end 
end


function onoffachievements()
    if achievementsMainWindow:isVisible() then
        achievementsMainWindow:hide()
					ProtocolGame.unregisterExtendedOpcode(167)
					ProtocolGame.unregisterExtendedOpcode(168)
					ProtocolGame.unregisterExtendedOpcode(169)
					ProtocolGame.unregisterExtendedOpcode(170)
					ProtocolGame.unregisterExtendedOpcode(171)
					ProtocolGame.unregisterExtendedOpcode(172)
					ProtocolGame.unregisterExtendedOpcode(173)
					ProtocolGame.unregisterExtendedOpcode(175)
					ProtocolGame.unregisterExtendedOpcode(176)
					ProtocolGame.unregisterExtendedOpcode(177)
					ProtocolGame.unregisterExtendedOpcode(179)
					ProtocolGame.unregisterExtendedOpcode(180)
					ProtocolGame.unregisterExtendedOpcode(182)
					ProtocolGame.unregisterExtendedOpcode(109)
					ProtocolGame.unregisterExtendedOpcode(108)
					ProtocolGame.unregisterExtendedOpcode(107)
					ProtocolGame.unregisterExtendedOpcode(106)
					ProtocolGame.unregisterExtendedOpcode(105)
					ProtocolGame.unregisterExtendedOpcode(183)
    else
	attachievements()
        achievementsMainWindow:show()
					ProtocolGame.registerExtendedOpcode(167, healthRow)
					ProtocolGame.registerExtendedOpcode(168, chakraPill)
					ProtocolGame.registerExtendedOpcode(169, arrestPermission)
					ProtocolGame.registerExtendedOpcode(170, permissionKaruShukaku)
					ProtocolGame.registerExtendedOpcode(171, apprenticeKabuto)
					ProtocolGame.registerExtendedOpcode(172, goldenTooth)
					ProtocolGame.registerExtendedOpcode(173, teleporteTemple)
					ProtocolGame.registerExtendedOpcode(175, passageVip)
					ProtocolGame.registerExtendedOpcode(176, lifeOrb)
					ProtocolGame.registerExtendedOpcode(177, doubleCollect)
					ProtocolGame.registerExtendedOpcode(179, rankS)
					ProtocolGame.registerExtendedOpcode(180, questionsKoete)
					ProtocolGame.registerExtendedOpcode(182, vipAtLastOneTime)
					ProtocolGame.registerExtendedOpcode(109, getRankDMarket)
					ProtocolGame.registerExtendedOpcode(108, getBingoBook)
					ProtocolGame.registerExtendedOpcode(107, getKillFood)
					ProtocolGame.registerExtendedOpcode(106, getCritical)
					ProtocolGame.registerExtendedOpcode(105, getBijuuChakraControl)
					ProtocolGame.registerExtendedOpcode(183, getArenaPermission)
g_game.getProtocolGame():sendExtendedOpcode(167, '')
g_game.getProtocolGame():sendExtendedOpcode(168, '')
g_game.getProtocolGame():sendExtendedOpcode(169, '')
g_game.getProtocolGame():sendExtendedOpcode(170, '')
g_game.getProtocolGame():sendExtendedOpcode(171, '')
g_game.getProtocolGame():sendExtendedOpcode(172, '')
g_game.getProtocolGame():sendExtendedOpcode(173, '')
g_game.getProtocolGame():sendExtendedOpcode(175, '')
g_game.getProtocolGame():sendExtendedOpcode(176, '')
g_game.getProtocolGame():sendExtendedOpcode(177, '')
g_game.getProtocolGame():sendExtendedOpcode(179, '')
g_game.getProtocolGame():sendExtendedOpcode(180, '')
g_game.getProtocolGame():sendExtendedOpcode(182, '')
g_game.getProtocolGame():sendExtendedOpcode(109, '')
g_game.getProtocolGame():sendExtendedOpcode(108, '')
g_game.getProtocolGame():sendExtendedOpcode(107, '')
g_game.getProtocolGame():sendExtendedOpcode(106, '')
g_game.getProtocolGame():sendExtendedOpcode(105, '')
g_game.getProtocolGame():sendExtendedOpcode(183, '')
    end
end