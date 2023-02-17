cc.FileUtils:getInstance():setPopupNotify(false)

require "config"
require "cocos.init"

local function main()
    local director = cc.Director:getInstance()
    local view = director:getOpenGLView()
    -- view:setFrameSize(1920, 1080)
    local framesize = view:getFrameSize()
    view:setDesignResolutionSize(framesize.width, framesize.height, cc.ResolutionPolicy.FIXED_HEIGHT)
    print(tostring(framesize.width) .. ":" .. tostring(framesize.height))
    require("app.MyApp"):create():run()

    -- local viewsize = director:getWinSize()
    -- display.contentScaleFactor = director:getContentScaleFactor()
    -- display.size               = {width = viewsize.width, height = viewsize.height}
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
