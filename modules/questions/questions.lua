


function init()
        questionsWindow = g_ui.displayUI('questions.otui')
        questionsWindow:hide()
        
        questionsButton = modules.client_topmenu.addLeftGameButton('questionsButton', tr('Answer'), '/images/Naruto/quiz', onClickAnswer)
end

function terminate()
        questionsWindow:hide()
end


function responderPergunta()
  local text = questionsWindow:getChildById('textEditAnswer'):getText()
  g_game.talk('/respquestionskoete ' .. text)
  questionsWindow:setVisible(false)
  questionsButton:setOn(false)
end
function cancelarResposta()
  questionsWindow:setVisible(false)
end




function onClickAnswer()
    if questionsWindow:isVisible() then
        questionsWindow:hide()
		questionsButton:setOn(false)
    else
        questionsWindow:show()
		questionsButton:setOn(true)
    end
end