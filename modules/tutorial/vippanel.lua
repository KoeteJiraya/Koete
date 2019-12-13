


function init()
ProtocolGame.registerExtendedOpcode(59, getTPPage)
ProtocolGame.registerExtendedOpcode(58, getGold)
g_ui.importStyle('vippanel')
VipPanelWindow = g_ui.createWidget('VipPanelWindow', rootWidget)
VipPanelWindow:hide()
VipPanelWindow2 = g_ui.createWidget('VipPanelWindow2', rootWidget)
VipPanelWindow2:hide()
VipPanelWindow3 = g_ui.createWidget('VipPanelWindow3', rootWidget)
VipPanelWindow3:hide()
VipPanelWindow4 = g_ui.createWidget('VipPanelWindow4', rootWidget)
VipPanelWindow4:hide()
DonatePanel = g_ui.createWidget('DonatePanel', rootWidget)
DonatePanel:hide()
VipPanelWindow2:getChildById('goldoff'):setVisible(false)
VipPanelWindow2:getChildById('goldon'):setVisible(false)
		    connect(g_game, { 
        onGameEnd = hideAll1
    })
end

function terminate()
ProtocolGame.unregisterExtendedOpcode(59)
ProtocolGame.unregisterExtendedOpcode(58)
disconnect(g_game, { 
        onGameEnd = hideAll
    })

    destroyAll()
end

function getGold(protocol, opcode, buffer)
if buffer == "1" then 
VipPanelWindow2:getChildById('goldoff'):setVisible(false)
VipPanelWindow2:getChildById('goldon'):setVisible(true)
else
VipPanelWindow2:getChildById('goldoff'):setVisible(true)
VipPanelWindow2:getChildById('goldon'):setVisible(false)
end
end

function getTPPage(protocol, opcode, buffer)
if buffer == "1" then 
VipPanelWindow:recursiveGetChildById('PanelTpVip'):setImageSource('/images/Naruto/VipPanel/TPKonoha')
VipPanelWindow:getChildById('VilageName'):setText('KONOHA')
VipPanelWindow:getChildById('CountryName'):setText('FIRE')
elseif buffer == "2" then 
VipPanelWindow:recursiveGetChildById('PanelTpVip'):setImageSource('/images/Naruto/VipPanel/TPSunagakure')
VipPanelWindow:getChildById('VilageName'):setText('SUNA')
VipPanelWindow:getChildById('CountryName'):setText('WIND')
elseif buffer == "3" then 
VipPanelWindow:recursiveGetChildById('PanelTpVip'):setImageSource('/images/Naruto/VipPanel/TPIwagakure')
VipPanelWindow:getChildById('VilageName'):setText('IWAGAKURE')
VipPanelWindow:getChildById('CountryName'):setText('EARTH')
elseif buffer == "4" then 
VipPanelWindow:recursiveGetChildById('PanelTpVip'):setImageSource('/images/Naruto/VipPanel/TPKumogakure')
VipPanelWindow:getChildById('VilageName'):setText('KUMOGAKURA')
VipPanelWindow:getChildById('CountryName'):setText('LIGHTNING')
elseif buffer == "5" then 
VipPanelWindow:recursiveGetChildById('PanelTpVip'):setImageSource('/images/Naruto/VipPanel/TPKusagakure')
VipPanelWindow:getChildById('VilageName'):setText('KUSAGAKURE')
VipPanelWindow:getChildById('CountryName'):setText('UNKNOWN')
end
end

function avacartppag()
g_game.talk('!avancartpcliente')
g_game.getProtocolGame():sendExtendedOpcode(59, '')
end

function voltartppag()
g_game.talk('!retrocedertpcliente')
g_game.getProtocolGame():sendExtendedOpcode(59, '')
end

function gotpclient()
g_game.talk('!gotp')
end

function goldonoff()
g_game.talk('/loot money')
g_game.getProtocolGame():sendExtendedOpcode(58, '')
end

function gotrain()
g_game.talk('!gotrainer')
end

function buyvipv()
g_game.talk('!bvip')
end

function vipdaysv()
g_game.talk('!vipdays')
end

function donatev()
if DonatePanel:isVisible() then
DonatePanel:hide()
else
DonatePanel:show()
end
end

function donate1()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-9227f1ce-debe-4911-8020-ac878b2e07fa")
end

function donate5()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-aeef0fb1-27d4-448a-8e6f-fb24ecdbd3cc")
end

function donate10()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-2dcefc05-1ee7-41aa-8810-517da3fd9158")
end

function donate20()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-74fcc974-a1db-4ae5-b71a-91dacf3532ff")
end

function donate30()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-cbc62e62-1049-44e4-a472-0fb257699d21")
end

function donate50()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-3a917aba-1e69-4dd0-907a-14e3e48ff6a4")
end

function donate100()
os.execute("start https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=341231793-90fc6b0d-d0f3-4c1c-96a6-fe575c9e35b1")
end


function onoffvippanel()
if VipPanelWindow:isVisible() then
        VipPanelWindow:hide()
		DonatePanel:hide()
elseif VipPanelWindow2:isVisible() then
        VipPanelWindow2:hide()
		DonatePanel:hide()
elseif VipPanelWindow3:isVisible() then
        VipPanelWindow3:hide()
		DonatePanel:hide()
elseif VipPanelWindow4:isVisible() then
        VipPanelWindow4:hide()
		DonatePanel:hide()
elseif DonatePanel:isVisible() then
        DonatePanel:hide()
    else
	g_game.getProtocolGame():sendExtendedOpcode(59, '')
	g_game.getProtocolGame():sendExtendedOpcode(58, '')
        VipPanelWindow:show()
    end
end


function selectgold()
VipPanelWindow:hide()
VipPanelWindow2:show()
VipPanelWindow3:hide()
VipPanelWindow4:hide()
DonatePanel:hide()
g_game.getProtocolGame():sendExtendedOpcode(58, '')
end

function selectteleport()
VipPanelWindow:show()
VipPanelWindow2:hide()
VipPanelWindow3:hide()
VipPanelWindow4:hide()
DonatePanel:hide()
end

function selecttrainer()
VipPanelWindow:hide()
VipPanelWindow2:hide()
VipPanelWindow3:show()
VipPanelWindow4:hide()
DonatePanel:hide()
end

function selectvip()
VipPanelWindow:hide()
VipPanelWindow2:hide()
VipPanelWindow3:hide()
VipPanelWindow4:show()
DonatePanel:hide()
end


-- Destroyall função necessaria para quebrar a janela e  botao quadno sair, para quando voltar nao precisar clicar duas vezes no icone, uma seria para desativar e a outra para reativar.
function destroyAll()
VipPanelWindow:destroy()
VipPanelWindow2:destroy()
VipPanelWindow3:destroy()
VipPanelWindow4:destroy()
DonatePanel:destroy()
end

-- Hideall função necessaria para fechar a janela quando fechar o cliente---
function hideAll1()
    VipPanelWindow:hide()
	    VipPanelWindow2:hide()
		VipPanelWindow3:hide()
		VipPanelWindow4:hide()
		DonatePanel:hide()
end