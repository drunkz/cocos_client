local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- add background image
    display.newSprite("HelloWorld.png"):move(display.center):addTo(self)

    -- add HelloWorld label
    -- cc.Label:createWithSystemFont("Hello World", "Arial", 40):move(display.cx, display.cy + 200):addTo(self)
    local label = cc.Label:createWithSystemFont("测试看看中文显示效果zenmeyang1231230563", "宋体", 12)
    label:move(display.cx, display.cy + 150):addTo(self)

    local director = cc.Director:getInstance()
    local view = director:getOpenGLView()
    local framesize = view:getFrameSize()
    local resolutionSize = view:getDesignResolutionSize()
    cc.Label:createWithSystemFont("实际宽：" .. tostring(framesize.width), "宋体", 12):move(display.cx,
        display.cy + 230):addTo(self)
    cc.Label:createWithSystemFont("实际高：" .. tostring(framesize.height), "宋体", 12):move(display.cx,
        display.cy + 210):addTo(self)
    cc.Label:createWithSystemFont("设计宽：" .. tostring(resolutionSize.width), "宋体", 12):move(display.cx,
        display.cy + 190):addTo(self)
    cc.Label:createWithSystemFont("设计高：" .. tostring(resolutionSize.height), "宋体", 12):move(display.cx,
        display.cy + 170):addTo(self)

end

return MainScene
