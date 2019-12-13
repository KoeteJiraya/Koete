
		
function init()

  

		ProtocolGame.registerExtendedOpcode(92, getHaveGuild)
		ProtocolGame.registerExtendedOpcode(91, getPosGuild)
		ProtocolGame.registerExtendedOpcode(88, getGuildMoney)
		ProtocolGame.registerExtendedOpcode(87, getGuildLimit)
		ProtocolGame.registerExtendedOpcode(86, getGuildTotal)
		ProtocolGame.registerExtendedOpcode(85, getValueSpot)
		ProtocolGame.registerExtendedOpcode(89, getGuildPlayerPoint)
		ProtocolGame.registerExtendedOpcode(90, getGuildPower)
		ProtocolGame.registerExtendedOpcode(84, getStarPrice)
		ProtocolGame.registerExtendedOpcode(83, getItemSpot1)
		ProtocolGame.registerExtendedOpcode(82, getItemSpot2)
		ProtocolGame.registerExtendedOpcode(81, getItemSpot3)
		ProtocolGame.registerExtendedOpcode(80, getItemSpot4)
		ProtocolGame.registerExtendedOpcode(79, getItemSpot5)
		ProtocolGame.registerExtendedOpcode(78, getItemSpot6)
		ProtocolGame.registerExtendedOpcode(77, getItemSpot7)
		ProtocolGame.registerExtendedOpcode(76, getItemSpot8)
		ProtocolGame.registerExtendedOpcode(75, getItemSpot9)
		ProtocolGame.registerExtendedOpcode(74, getItemSpot10)
		ProtocolGame.registerExtendedOpcode(73, getItemSpot11)
		ProtocolGame.registerExtendedOpcode(72, getItemSpot12)
		ProtocolGame.registerExtendedOpcode(71, getItemSpot13)
		ProtocolGame.registerExtendedOpcode(70, getItemSpot14)

		g_ui.importStyle('koeteguild')
		button = g_ui.createWidget('ButtonSample', rootWidget)
		koeteguildwindow = g_ui.createWidget('MainWindowSample', rootWidget)
		guildManagement = g_ui.createWidget('GuildManagement', rootWidget)
		guildLimit = g_ui.createWidget('GuildLimit', rootWidget)
		guildSlot = g_ui.createWidget('GuildSlot', rootWidget)
		button:hide()
		guildSlot:hide()
		guildManagement:hide()
		guildLimit:hide()
		koeteguildButton = modules.client_topmenu.addRightGameToggleButton('koeteguildButton', tr('Guild'), 'icone', onoff, true)

        koeteguildwindow:hide()
		
		guildSlot:getChildById('star1'):setVisible(false)
		guildSlot:getChildById('star2'):setVisible(false)
		guildSlot:getChildById('star3'):setVisible(false)
		guildSlot:getChildById('star4'):setVisible(false)
		guildSlot:getChildById('star5'):setVisible(false)
		guildSlot:getChildById('star6'):setVisible(false)
		guildSlot:getChildById('star7'):setVisible(false)
		guildSlot:getChildById('star8'):setVisible(false)
		guildSlot:getChildById('star9'):setVisible(false)
		guildSlot:getChildById('star10'):setVisible(false)
		guildSlot:getChildById('star11'):setVisible(false)
		guildSlot:getChildById('star12'):setVisible(false)
		guildSlot:getChildById('star13'):setVisible(false)
		guildSlot:getChildById('star14'):setVisible(false)
		
		guildSlot:getChildById('slotpanel01'):setVisible(false)
		guildSlot:getChildById('slotpanel02'):setVisible(false)
		guildSlot:getChildById('slotpanel03'):setVisible(false)
		guildSlot:getChildById('slotpanel04'):setVisible(false)
		guildSlot:getChildById('slotpanel05'):setVisible(false)
		guildSlot:getChildById('slotpanel06'):setVisible(false)
		guildSlot:getChildById('slotpanel07'):setVisible(false)
		guildSlot:getChildById('slotpanel08'):setVisible(false)
		guildSlot:getChildById('slotpanel09'):setVisible(false)
		guildSlot:getChildById('slotpanel10'):setVisible(false)
		guildSlot:getChildById('slotpanel11'):setVisible(false)
		guildSlot:getChildById('slotpanel12'):setVisible(false)
		guildSlot:getChildById('slotpanel13'):setVisible(false)
		guildSlot:getChildById('slotpanel14'):setVisible(false)
		
		guildSlot:getChildById('itemSloted01'):setVisible(false)
		guildSlot:getChildById('itemSloted02'):setVisible(false)
		guildSlot:getChildById('itemSloted03'):setVisible(false)
		guildSlot:getChildById('itemSloted04'):setVisible(false)
		guildSlot:getChildById('itemSloted05'):setVisible(false)
		guildSlot:getChildById('itemSloted06'):setVisible(false)
		guildSlot:getChildById('itemSloted07'):setVisible(false)
		guildSlot:getChildById('itemSloted08'):setVisible(false)
		guildSlot:getChildById('itemSloted09'):setVisible(false)
		guildSlot:getChildById('itemSloted10'):setVisible(false)
		guildSlot:getChildById('itemSloted11'):setVisible(false)
		guildSlot:getChildById('itemSloted12'):setVisible(false)
		guildSlot:getChildById('itemSloted13'):setVisible(false)
		guildSlot:getChildById('buystarLabel'):setText('10')
		guildSlot:getChildById('itemSloted14'):setVisible(false)
		
		koeteguildwindow:recursiveGetChildById('LabelGuildMoney'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('LabelGuildPower'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('LabelGuildPoints'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteMemberGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('textEditCreateGuild'):setVisible(false)
		koeteguildwindow:getChildById('textEditJoinGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteRankGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('iventoryItensKoeteGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteStaminaGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteDonateGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('koeteManageGuild'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('limitGuild'):setVisible(false)

        
	-- Hideall função necessaria para fechar a janela quando fechar o cliente (Conectar a função Hideall)---
    connect(g_game, { 
        onGameEnd = hideAll
    })
	
end

function showKoeteDonateGuild()
    if button:isVisible() then
    button:hide()
    else
    button:show()
    end
end

function showGuildManagement()
    if guildManagement:isVisible() then
    guildManagement:hide()
    else
    guildManagement:show()
    end
end

function showGuildLimit()
    if guildLimit:isVisible() then
    guildLimit:hide()
    else
    guildLimit:show()
    end
end

function showIventorySlot()
    if guildSlot:isVisible() then
    guildSlot:hide()
    else
	g_game.getProtocolGame():sendExtendedOpcode(84, '')
    guildSlot:show()
    end
end


function getItemSpot1(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted01'):setVisible(true)
guildSlot:getChildById('itemSloted01'):setTooltip(''..buffer)
end

function getItemSpot2(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted02'):setVisible(true)
guildSlot:getChildById('itemSloted02'):setTooltip(''..buffer)
end

function getItemSpot3(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted03'):setVisible(true)
guildSlot:getChildById('itemSloted03'):setTooltip(''..buffer)
end

function getItemSpot4(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted04'):setVisible(true)
guildSlot:getChildById('itemSloted04'):setTooltip(''..buffer)
end

function getItemSpot5(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted05'):setVisible(true)
guildSlot:getChildById('itemSloted05'):setTooltip(''..buffer)
end

function getItemSpot6(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted06'):setVisible(true)
guildSlot:getChildById('itemSloted06'):setTooltip(''..buffer)
end

function getItemSpot7(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted07'):setVisible(true)
guildSlot:getChildById('itemSloted07'):setTooltip(''..buffer)
end

function getItemSpot8(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted08'):setVisible(true)
guildSlot:getChildById('itemSloted08'):setTooltip(''..buffer)
end

function getItemSpot9(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted09'):setVisible(true)
guildSlot:getChildById('itemSloted09'):setTooltip(''..buffer)
end

function getItemSpot10(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted010'):setVisible(true)
guildSlot:getChildById('itemSloted010'):setTooltip(''..buffer)
end

function getItemSpot11(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted011'):setVisible(true)
guildSlot:getChildById('itemSloted011'):setTooltip(''..buffer)
end

function getItemSpot12(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted012'):setVisible(true)
guildSlot:getChildById('itemSloted012'):setTooltip(''..buffer)
end

function getItemSpot13(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted013'):setVisible(true)
guildSlot:getChildById('itemSloted013'):setTooltip(''..buffer)
end

function getItemSpot14(protocol, opcode, buffer)
guildSlot:getChildById('itemSloted014'):setVisible(true)
guildSlot:getChildById('itemSloted014'):setTooltip(''..buffer)
end

function getPosGuild(protocol, opcode, buffer)
if buffer == "1" then 
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setImageSource('/images/Naruto/koeteguild/1')
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setTooltip('First Place: Every player of your guild will earn +5 guild points per day.')
elseif buffer == "2" then 
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setImageSource('/images/Naruto/koeteguild/2')
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setTooltip('Second Place: Every player of your guild will earn +4 guild points per day.')
elseif buffer == "3" then 
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setImageSource('/images/Naruto/koeteguild/3')
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setTooltip('Third Place: Every player of your guild will earn +3 guild points per day.')
elseif buffer == "4" then 
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setImageSource('/images/Naruto/koeteguild/4')
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setTooltip('Fourth Place: Every player of your guild will earn +2 guild points per day.')
elseif buffer == "5" then 
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setImageSource('/images/Naruto/koeteguild/5')
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setTooltip('Fifth Place: Every player of your guild will earn +1 guild points per day.')
end
end

function getGuildMoney(protocol, opcode, buffer)
if buffer < "0" then 
koeteguildwindow:getChildById('LabelGuildMoney'):setText('0')
else
koeteguildwindow:getChildById('LabelGuildMoney'):setText(''..buffer)
end
end

function getGuildLimit(protocol, opcode, buffer)
guildLimit:getChildById('LabelGuildLimit'):setText(''..buffer)
end

function getGuildTotal(protocol, opcode, buffer)
guildLimit:getChildById('LabelGuildTotal'):setText(''..buffer)
end


function getGuildPlayerPoint(protocol, opcode, buffer)
if buffer < "0" then 
koeteguildwindow:getChildById('LabelGuildPoints'):setText('0')
else
koeteguildwindow:getChildById('LabelGuildPoints'):setText(''..buffer)
end
end

function getValueSpot(protocol, opcode, buffer)
guildLimit:getChildById('LabelGuildValueSpot'):setText(''..buffer)
end

function getGuildPower(protocol, opcode, buffer)
if buffer < "0" then 
koeteguildwindow:getChildById('LabelGuildPower'):setText('0')
else
koeteguildwindow:getChildById('LabelGuildPower'):setText(''..buffer)
end
end

function getStarPrice(protocol, opcode, buffer)
if buffer == "50" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "120" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "190" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "230" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "320" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "400" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "560" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "700" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "1500" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "1700" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('star10'):setVisible(true)
guildSlot:getChildById('slotpanel10'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "2500" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('star10'):setVisible(true)
guildSlot:getChildById('star11'):setVisible(true)
guildSlot:getChildById('slotpanel11'):setVisible(true)
guildSlot:getChildById('slotpanel10'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "3600" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('star10'):setVisible(true)
guildSlot:getChildById('star11'):setVisible(true)
guildSlot:getChildById('star12'):setVisible(true)
guildSlot:getChildById('slotpanel12'):setVisible(true)
guildSlot:getChildById('slotpanel11'):setVisible(true)
guildSlot:getChildById('slotpanel10'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "5000" then 
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('star10'):setVisible(true)
guildSlot:getChildById('star11'):setVisible(true)
guildSlot:getChildById('star12'):setVisible(true)
guildSlot:getChildById('star13'):setVisible(true)
guildSlot:getChildById('slotpanel13'):setVisible(true)
guildSlot:getChildById('slotpanel12'):setVisible(true)
guildSlot:getChildById('slotpanel11'):setVisible(true)
guildSlot:getChildById('slotpanel10'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
guildSlot:getChildById('buystarLabel'):setText(''..buffer)

elseif buffer == "6000" then 
guildSlot:getChildById('buystarLabel'):setVisible(false)
guildSlot:getChildById('storeStarBuy'):setVisible(false)
guildSlot:getChildById('star1'):setVisible(true)
guildSlot:getChildById('star2'):setVisible(true)
guildSlot:getChildById('star3'):setVisible(true)
guildSlot:getChildById('star4'):setVisible(true)
guildSlot:getChildById('star5'):setVisible(true)
guildSlot:getChildById('star6'):setVisible(true)
guildSlot:getChildById('star7'):setVisible(true)
guildSlot:getChildById('star8'):setVisible(true)
guildSlot:getChildById('star9'):setVisible(true)
guildSlot:getChildById('star10'):setVisible(true)
guildSlot:getChildById('star11'):setVisible(true)
guildSlot:getChildById('star12'):setVisible(true)
guildSlot:getChildById('star13'):setVisible(true)
guildSlot:getChildById('star14'):setVisible(true)
guildSlot:getChildById('slotpanel14'):setVisible(true)
guildSlot:getChildById('slotpanel13'):setVisible(true)
guildSlot:getChildById('slotpanel12'):setVisible(true)
guildSlot:getChildById('slotpanel11'):setVisible(true)
guildSlot:getChildById('slotpanel10'):setVisible(true)
guildSlot:getChildById('slotpanel09'):setVisible(true)
guildSlot:getChildById('slotpanel08'):setVisible(true)
guildSlot:getChildById('slotpanel07'):setVisible(true)
guildSlot:getChildById('slotpanel06'):setVisible(true)
guildSlot:getChildById('slotpanel05'):setVisible(true)
guildSlot:getChildById('slotpanel04'):setVisible(true)
guildSlot:getChildById('slotpanel03'):setVisible(true)
guildSlot:getChildById('slotpanel02'):setVisible(true)
guildSlot:getChildById('slotpanel01'):setVisible(true)
end
end






function getHaveGuild(protocol, opcode, buffer)
print(buffer)
if buffer == "1" then 
koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setImageSource('/images/Naruto/koeteguild/okout')
koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setTooltip('Create a Guild')
koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setText('CREATE')

koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setImageSource('/images/Naruto/koeteguild/joinokout')
koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setTooltip('Join a Guild')
koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setText('JOIN')

koeteguildwindow:getChildById('textEditCreateGuild'):setVisible(true)
koeteguildwindow:getChildById('textEditJoinGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setVisible(true)

function createGuildKoeteButton()
local text = koeteguildwindow:getChildById('textEditCreateGuild'):getText()
g_game.talk('!criarguild ' ..text)
    koeteguildwindow:hide()
			koeteguildButton:setOn(false)
end

function joinGuildKoeteButton()
local text = koeteguildwindow:getChildById('textEditJoinGuild'):getText()
g_game.talk('!entrarguild ' ..text)
    koeteguildwindow:hide()
			koeteguildButton:setOn(false)
end

elseif buffer == "2" then 

function getMemberKoeteButton()
g_game.talk('!guildplayers')
end
function getRankKoeteButton()
g_game.talk('!guildrank')
end
function donateKoeteGuild100()
g_game.talk('!donateguild 100')
			if button:isVisible() then 
			button:hide()
			end
	g_game.getProtocolGame():sendExtendedOpcode(88, '')
	g_game.getProtocolGame():sendExtendedOpcode(89, '')
	g_game.getProtocolGame():sendExtendedOpcode(90, '')
end
function donateKoeteGuild1000()
g_game.talk('!donateguild 1000')
			if button:isVisible() then 
			button:hide()
			end
	g_game.getProtocolGame():sendExtendedOpcode(88, '')
	g_game.getProtocolGame():sendExtendedOpcode(89, '')
	g_game.getProtocolGame():sendExtendedOpcode(90, '')
end
function donateKoeteGuildKC()
g_game.talk('!donateguild koete')
			if button:isVisible() then 
			button:hide()
			end
	g_game.getProtocolGame():sendExtendedOpcode(88, '')
	g_game.getProtocolGame():sendExtendedOpcode(89, '')
	g_game.getProtocolGame():sendExtendedOpcode(90, '')
end




function inviteMemberGuild()
local text = guildManagement:getChildById('textEditInviteGuild'):getText()
g_game.talk('!inviteguild ' ..text)
    guildManagement:hide()
end

function kickMemberGuild()
local text = guildManagement:getChildById('textEditKickGuild'):getText()
g_game.talk('!kickguild ' ..text)
    guildManagement:hide()
end

function promoteMemberGuild()
local text = guildManagement:getChildById('textEditPromoteGuild'):getText()
g_game.talk('!promoteguild ' ..text)
    guildManagement:hide()
end

function demoteMemberGuild()
local text = guildManagement:getChildById('textEditDemoteGuild'):getText()
g_game.talk('!demoteguild ' ..text)
    guildManagement:hide()
end

function passleaderMemberGuild()
local text = guildManagement:getChildById('textEditPassLeaderGuild'):getText()
g_game.talk('!leaderguild ' ..text)
    guildManagement:hide()
end

function leaveMemberGuild()
g_game.talk('!leaveguild')
    guildManagement:hide()
end

function disbandMemberGuild()
g_game.talk('!disbandguild')
    guildManagement:hide()
end

function staminaGuildButton()
g_game.talk('!staminaguild')
playMusic('01')
end

function buySpotGuild()
g_game.talk('!buyspotguild')
	g_game.getProtocolGame():sendExtendedOpcode(87, '')
	g_game.getProtocolGame():sendExtendedOpcode(86, '')
	g_game.getProtocolGame():sendExtendedOpcode(88, '')
	g_game.getProtocolGame():sendExtendedOpcode(85, '')
end

function addGuildItem()
local text = guildSlot:getChildById('addItemGuildSlotTextedit'):getText()
g_game.talk('!additemguild ' ..text)
guildSlot:getChildById('addItemGuildSlotTextedit'):setText('')
guildSlot:getChildById('itemSloted01'):setVisible(false)
guildSlot:getChildById('itemSloted02'):setVisible(false)
guildSlot:getChildById('itemSloted03'):setVisible(false)
guildSlot:getChildById('itemSloted04'):setVisible(false)
guildSlot:getChildById('itemSloted05'):setVisible(false)
guildSlot:getChildById('itemSloted06'):setVisible(false)
guildSlot:getChildById('itemSloted07'):setVisible(false)
guildSlot:getChildById('itemSloted08'):setVisible(false)
guildSlot:getChildById('itemSloted09'):setVisible(false)
guildSlot:getChildById('itemSloted10'):setVisible(false)
guildSlot:getChildById('itemSloted11'):setVisible(false)
guildSlot:getChildById('itemSloted12'):setVisible(false)
guildSlot:getChildById('itemSloted13'):setVisible(false)
guildSlot:getChildById('itemSloted14'):setVisible(false)
	g_game.getProtocolGame():sendExtendedOpcode(83, '')
	g_game.getProtocolGame():sendExtendedOpcode(82, '')
	g_game.getProtocolGame():sendExtendedOpcode(81, '')
	g_game.getProtocolGame():sendExtendedOpcode(80, '')
	g_game.getProtocolGame():sendExtendedOpcode(79, '')
	g_game.getProtocolGame():sendExtendedOpcode(78, '')
	g_game.getProtocolGame():sendExtendedOpcode(77, '')
	g_game.getProtocolGame():sendExtendedOpcode(76, '')
	g_game.getProtocolGame():sendExtendedOpcode(75, '')
	g_game.getProtocolGame():sendExtendedOpcode(74, '')
	g_game.getProtocolGame():sendExtendedOpcode(73, '')
	g_game.getProtocolGame():sendExtendedOpcode(72, '')
	g_game.getProtocolGame():sendExtendedOpcode(71, '')
	g_game.getProtocolGame():sendExtendedOpcode(70, '')
end

function removeGuildItem()
local text = guildSlot:getChildById('removeItemGuildSlotTextedit'):getText()
g_game.talk('!removeitemguild ' ..text)
guildSlot:getChildById('removeItemGuildSlotTextedit'):setText('')
guildSlot:getChildById('itemSloted01'):setVisible(false)
guildSlot:getChildById('itemSloted02'):setVisible(false)
guildSlot:getChildById('itemSloted03'):setVisible(false)
guildSlot:getChildById('itemSloted04'):setVisible(false)
guildSlot:getChildById('itemSloted05'):setVisible(false)
guildSlot:getChildById('itemSloted06'):setVisible(false)
guildSlot:getChildById('itemSloted07'):setVisible(false)
guildSlot:getChildById('itemSloted08'):setVisible(false)
guildSlot:getChildById('itemSloted09'):setVisible(false)
guildSlot:getChildById('itemSloted10'):setVisible(false)
guildSlot:getChildById('itemSloted11'):setVisible(false)
guildSlot:getChildById('itemSloted12'):setVisible(false)
guildSlot:getChildById('itemSloted13'):setVisible(false)
guildSlot:getChildById('itemSloted14'):setVisible(false)
	g_game.getProtocolGame():sendExtendedOpcode(83, '')
	g_game.getProtocolGame():sendExtendedOpcode(82, '')
	g_game.getProtocolGame():sendExtendedOpcode(81, '')
	g_game.getProtocolGame():sendExtendedOpcode(80, '')
	g_game.getProtocolGame():sendExtendedOpcode(79, '')
	g_game.getProtocolGame():sendExtendedOpcode(78, '')
	g_game.getProtocolGame():sendExtendedOpcode(77, '')
	g_game.getProtocolGame():sendExtendedOpcode(76, '')
	g_game.getProtocolGame():sendExtendedOpcode(75, '')
	g_game.getProtocolGame():sendExtendedOpcode(74, '')
	g_game.getProtocolGame():sendExtendedOpcode(73, '')
	g_game.getProtocolGame():sendExtendedOpcode(72, '')
	g_game.getProtocolGame():sendExtendedOpcode(71, '')
	g_game.getProtocolGame():sendExtendedOpcode(70, '')
end

function buySlotGuildDepot()
g_game.talk('!buyspotguildepot')
g_game.getProtocolGame():sendExtendedOpcode(84, '')
g_game.getProtocolGame():sendExtendedOpcode(89, '')
end



koeteguildwindow:recursiveGetChildById('koeteDonateGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteManageGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('limitGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteMemberGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteRankGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('iventoryItensKoeteGuild'):setVisible(true)
koeteguildwindow:recursiveGetChildById('koeteStaminaGuild'):setVisible(true)
		koeteguildwindow:recursiveGetChildById('LabelGuildMoney'):setVisible(true)
		koeteguildwindow:recursiveGetChildById('LabelGuildPower'):setVisible(true)
		koeteguildwindow:recursiveGetChildById('LabelGuildPoints'):setVisible(true)



koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setVisible(false)
koeteguildwindow:getChildById('textEditCreateGuild'):setVisible(false)
koeteguildwindow:getChildById('textEditJoinGuild'):setVisible(false)
koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setVisible(false)
end
end

function onoff()
    if koeteguildwindow:isVisible() then
    koeteguildwindow:hide()
			if button:isVisible() then 
			button:hide()
			end 
			if guildManagement:isVisible() then 
			guildManagement:hide()
			end
			if guildLimit:isVisible() then 
			guildLimit:hide()
			end
			if guildSlot:isVisible() then 
			guildSlot:hide()
			end
	koeteguildButton:setOn(false)
			koeteguildwindow:recursiveGetChildById('koeteCreateGuild'):setVisible(false)
			koeteguildwindow:getChildById('textEditCreateGuild'):setVisible(false)
			koeteguildwindow:getChildById('textEditJoinGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteJoinGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteMemberGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteRankGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('iventoryItensKoeteGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteStaminaGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koetePositionGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteDonateGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('koeteManageGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('limitGuild'):setVisible(false)
			koeteguildwindow:recursiveGetChildById('LabelGuildMoney'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('LabelGuildPower'):setVisible(false)
		koeteguildwindow:recursiveGetChildById('LabelGuildPoints'):setVisible(false)
		
		guildSlot:getChildById('buystarLabel'):setText('10')
		guildSlot:recursiveGetChildById('star1'):setVisible(false)
		guildSlot:recursiveGetChildById('star2'):setVisible(false)
		guildSlot:recursiveGetChildById('star3'):setVisible(false)
		guildSlot:recursiveGetChildById('star4'):setVisible(false)
		guildSlot:recursiveGetChildById('star5'):setVisible(false)
		guildSlot:recursiveGetChildById('star6'):setVisible(false)
		guildSlot:recursiveGetChildById('star7'):setVisible(false)
		guildSlot:recursiveGetChildById('star8'):setVisible(false)
		guildSlot:recursiveGetChildById('star9'):setVisible(false)
		guildSlot:recursiveGetChildById('star10'):setVisible(false)
		guildSlot:recursiveGetChildById('star11'):setVisible(false)
		guildSlot:recursiveGetChildById('star12'):setVisible(false)
		guildSlot:recursiveGetChildById('star13'):setVisible(false)
		guildSlot:recursiveGetChildById('star14'):setVisible(false)
		
		guildSlot:recursiveGetChildById('slotpanel01'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel02'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel03'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel04'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel05'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel06'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel07'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel08'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel09'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel10'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel11'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel12'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel13'):setVisible(false)
		guildSlot:recursiveGetChildById('slotpanel14'):setVisible(false)
		
		guildSlot:recursiveGetChildById('itemSloted01'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted02'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted03'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted04'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted05'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted06'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted07'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted08'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted09'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted10'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted11'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted12'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted13'):setVisible(false)
		guildSlot:recursiveGetChildById('itemSloted14'):setVisible(false)
		
    else
    koeteguildwindow:show()
	koeteguildButton:setOn(true)
	g_game.getProtocolGame():sendExtendedOpcode(92, '')
	g_game.getProtocolGame():sendExtendedOpcode(91, '')
	g_game.getProtocolGame():sendExtendedOpcode(88, '')
	g_game.getProtocolGame():sendExtendedOpcode(89, '')
	g_game.getProtocolGame():sendExtendedOpcode(90, '')
	g_game.getProtocolGame():sendExtendedOpcode(87, '')
	g_game.getProtocolGame():sendExtendedOpcode(86, '')
	g_game.getProtocolGame():sendExtendedOpcode(85, '')
	g_game.getProtocolGame():sendExtendedOpcode(84, '')
	g_game.getProtocolGame():sendExtendedOpcode(83, '')
	g_game.getProtocolGame():sendExtendedOpcode(82, '')
	g_game.getProtocolGame():sendExtendedOpcode(81, '')
	g_game.getProtocolGame():sendExtendedOpcode(80, '')
	g_game.getProtocolGame():sendExtendedOpcode(79, '')
	g_game.getProtocolGame():sendExtendedOpcode(78, '')
	g_game.getProtocolGame():sendExtendedOpcode(77, '')
	g_game.getProtocolGame():sendExtendedOpcode(76, '')
	g_game.getProtocolGame():sendExtendedOpcode(75, '')
	g_game.getProtocolGame():sendExtendedOpcode(74, '')
	g_game.getProtocolGame():sendExtendedOpcode(73, '')
	g_game.getProtocolGame():sendExtendedOpcode(72, '')
	g_game.getProtocolGame():sendExtendedOpcode(71, '')
	g_game.getProtocolGame():sendExtendedOpcode(70, '')
    end
end






function terminate()
	ProtocolGame.unregisterExtendedOpcode(92)
	ProtocolGame.unregisterExtendedOpcode(91)
	ProtocolGame.unregisterExtendedOpcode(88)
	ProtocolGame.unregisterExtendedOpcode(89)
	ProtocolGame.unregisterExtendedOpcode(90)
	ProtocolGame.unregisterExtendedOpcode(87)
	ProtocolGame.unregisterExtendedOpcode(86)
	ProtocolGame.unregisterExtendedOpcode(85)
	ProtocolGame.unregisterExtendedOpcode(84)
	ProtocolGame.unregisterExtendedOpcode(83)
	ProtocolGame.unregisterExtendedOpcode(82)
	ProtocolGame.unregisterExtendedOpcode(81)
	ProtocolGame.unregisterExtendedOpcode(80)
	ProtocolGame.unregisterExtendedOpcode(79)
	ProtocolGame.unregisterExtendedOpcode(78)
	ProtocolGame.unregisterExtendedOpcode(77)
	ProtocolGame.unregisterExtendedOpcode(76)
	ProtocolGame.unregisterExtendedOpcode(75)
	ProtocolGame.unregisterExtendedOpcode(74)
	ProtocolGame.unregisterExtendedOpcode(73)
	ProtocolGame.unregisterExtendedOpcode(72)
	ProtocolGame.unregisterExtendedOpcode(71)
	ProtocolGame.unregisterExtendedOpcode(70)
-- Hideall função necessaria para fechar a janela quando fechar o cliente (Desconectar a função Hideall)---
    disconnect(g_game, { 
        onGameEnd = hideAll
    })

    destroyAll()
end



-- Destroyall função necessaria para quebrar a janela e  botao quadno sair, para quando voltar nao precisar clicar duas vezes no icone, uma seria para desativar e a outra para reativar.
function destroyAll()
    koeteguildwindow:destroy()
	button:destroy()
	guildManagement:destroy()
	guildLimit:destroy()
	guildSlot:destroy()

end

-- Hideall função necessaria para fechar a janela quando fechar o cliente---
function hideAll()
		koeteguildButton:setOn(false)
    koeteguildwindow:hide()
	button:hide()
	guildManagement:hide()
	guildLimit:hide()
	guildSlot:hide()
end