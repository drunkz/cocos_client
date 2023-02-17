local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- add background image
    display.newSprite("HelloWorld.png"):move(display.center):addTo(self)

    -- add HelloWorld label
    -- cc.Label:createWithSystemFont("Hello World", "Arial", 40):move(display.cx, display.cy + 200):addTo(self)
    local label = cc.Label:createWithSystemFont("测试看看中文显示效果zenmeyang1231230563", "宋体", 12)
    label:move(display.cx, display.cy + 200):addTo(self)

end

return MainScene
