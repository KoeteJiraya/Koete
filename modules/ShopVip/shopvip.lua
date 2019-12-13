


function init()
ProtocolGame.registerExtendedOpcode(68, getBalance)
ProtocolGame.registerExtendedOpcode(69, getGuildPlayerPoint)
g_ui.importStyle('shopvip')
shopNormalWindow = g_ui.createWidget('ShopNormalWindow', rootWidget)
shopNormalWindow:hide()
shopGuildWindow = g_ui.createWidget('ShopGuildWindow', rootWidget)
shopGuildWindow:hide()
shopKoeteWindow = g_ui.createWidget('ShopKoeteWindow', rootWidget)
shopKoeteWindow:hide()
        shopvipButton = modules.client_topmenu.addRightGameToggleButton('shopvipButton', tr('Shop'), 'icone', onoffshop123, true)
		    connect(g_game, { 
        onGameEnd = hideAll1
    })
end

function terminate()
ProtocolGame.unregisterExtendedOpcode(68)
ProtocolGame.unregisterExtendedOpcode(69)
disconnect(g_game, { 
        onGameEnd = hideAll
    })

    destroyAll()
end

function getBalance(protocol, opcode, buffer)
shopNormalWindow:getChildById('ShopValorLabel'):setText(''..buffer)
end

function getGuildPlayerPoint(protocol, opcode, buffer)
shopGuildWindow:getChildById('ShopValorLabelGuild'):setText(''..buffer)
end

function pageshop1()
g_game.getProtocolGame():sendExtendedOpcode(68, '')

shopNormalWindow:show()
shopGuildWindow:hide()
shopKoeteWindow:hide()
end

function pageshop2()
g_game.getProtocolGame():sendExtendedOpcode(69, '')
shopNormalWindow:hide()
shopGuildWindow:show()
shopKoeteWindow:hide()
end

function pageshop3()
shopNormalWindow:hide()
shopGuildWindow:hide()
shopKoeteWindow:show()
end


function onoffshop123()
if shopNormalWindow:isVisible() then
        shopNormalWindow:hide()
		shopvipButton:setOn(false)
elseif shopGuildWindow:isVisible() then
        shopGuildWindow:hide()
		shopvipButton:setOn(false)
elseif shopKoeteWindow:isVisible() then
        shopKoeteWindow:hide()
		shopvipButton:setOn(false)
		
    else
        shopNormalWindow:show()
		g_game.getProtocolGame():sendExtendedOpcode(69, '')
		g_game.getProtocolGame():sendExtendedOpcode(68, '')
		shopvipButton:setOn(true)
    end
end

function shop1()
g_game.talk('!buyitemshopkoete 1')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop2()
g_game.talk('!buyitemshopkoete 2')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop3()
g_game.talk('!buyitemshopkoete 3')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop4()
g_game.talk('!buyitemshopkoete 4')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop5()
g_game.talk('!buyitemshopkoete 5')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop6()
g_game.talk('!buyitemshopkoete 6')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop7()
g_game.talk('!buyitemshopkoete 7')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop8()
g_game.talk('!buyitemshopkoete 8')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop9()
g_game.talk('!buyitemshopkoete 9')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop10()
g_game.talk('!buyitemshopkoete 10')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop11()
g_game.talk('!buyitemshopkoete 11')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop12()
g_game.talk('!buyitemshopkoete 12')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop13()
g_game.talk('!buyitemshopkoete 13')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop14()
g_game.talk('!buyitemshopkoete 14')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop15()
g_game.talk('!buyitemshopkoete 15')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop16()
g_game.talk('!buyitemshopkoete 16')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop17()
g_game.talk('!buyitemshopkoete 17')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop18()
g_game.talk('!buyitemshopkoete 18')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop19()
g_game.talk('!buyitemshopkoete 19')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop20()
g_game.talk('!buyitemshopkoete 20')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop21()
g_game.talk('!buyitemshopkoete 21')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop22()
g_game.talk('!buyitemshopkoete 22')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop23()
g_game.talk('!buyitemshopkoete 23')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop24()
g_game.talk('!buyitemshopkoete 24')
g_game.getProtocolGame():sendExtendedOpcode(69, '')
end
function shop25()
g_game.talk('!buyitemshopkoete 25')
end
function shop26()
g_game.talk('!buyitemshopkoete 26')
end
function shop27()
g_game.talk('!buyitemshopkoete 27')
end
function shop28()
g_game.talk('!buyitemshopkoete 28')
end
function shop29()
g_game.talk('!buyitemshopkoete 29')
end
function shop30()
g_game.talk('!buyitemshopkoete 30')
end
function shop31()
g_game.talk('!buyitemshopkoete 31')
end
function shop32()
g_game.talk('!buyitemshopkoete 32')
end
function shop33()
g_game.talk('!buyitemshopkoete 33')
end
function shop34()
g_game.talk('!buyitemshopkoete 34')
end
function shop35()
g_game.talk('!buyitemshopkoete 35')
end
function shop36()
g_game.talk('!buyitemshopkoete 36')
end
function shop37()
g_game.talk('!buyitemshopkoete 37')
g_game.getProtocolGame():sendExtendedOpcode(68, '')
end
function shop38()
g_game.talk('!buyitemshopkoete 38')
end
function shop39()
g_game.talk('!buyitemshopkoete 39')
end
function shop40()
g_game.talk('!buyitemshopkoete 40')
end
function shop41()
g_game.talk('!buyitemshopkoete 41')
end
function shop42()
g_game.talk('!buyitemshopkoete 42')
end
function shop43()
g_game.talk('!buyitemshopkoete 43')
end
function shop44()
g_game.talk('!buyitemshopkoete 44')
end
function shop45()
g_game.talk('!buyitemshopkoete 45')
end
function shop46()
g_game.talk('!buyitemshopkoete 46')
end
function shop47()
g_game.talk('!buyitemshopkoete 47')
end
function shop48()
g_game.talk('!buyitemshopkoete 48')
end
function shop49()
g_game.talk('!buyitemshopkoete 49')
end
function shop50()
g_game.talk('!buyitemshopkoete 50')
end
function shop51()
g_game.talk('!buyitemshopkoete 51')
end
function shop52()
g_game.talk('!buyitemshopkoete 52')
end
function shop53()
g_game.talk('!buyitemshopkoete 53')
end
function shop54()
g_game.talk('!buyitemshopkoete 54')
end
function shop55()
g_game.talk('!buyitemshopkoete 55')
end
function shop56()
g_game.talk('!buyitemshopkoete 56')
end
function shop57()
g_game.talk('!buyitemshopkoete 57')
end
function shop58()
g_game.talk('!buyitemshopkoete 58')
end
function shop59()
g_game.talk('!buyitemshopkoete 59')
end
function shop60()
g_game.talk('!buyitemshopkoete 60')
end
function shop61()
g_game.talk('!buyitemshopkoete 61')
end
function shop62()
g_game.talk('!buyitemshopkoete 62')
end
function shop63()
g_game.talk('!buyitemshopkoete 63')
end
function shop64()
g_game.talk('!buyitemshopkoete 64')
end


-- Destroyall função necessaria para quebrar a janela e  botao quadno sair, para quando voltar nao precisar clicar duas vezes no icone, uma seria para desativar e a outra para reativar.
function destroyAll()
shopNormalWindow:destroy()
shopGuildWindow:destroy()
shopKoeteWindow:destroy()

end

-- Hideall função necessaria para fechar a janela quando fechar o cliente---
function hideAll1()
shopvipButton:setOn(false)
    shopNormalWindow:hide()
	shopGuildWindow:hide()
	shopKoeteWindow:hide()
end