---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jameslendrem.
--- DateTime: 10/11/2023 23:06
---

local pd <const> = playdate;
local gfx <const> = pd.graphics;

import 'IsometricSquare'

class("IsometricCube").extends(gfx.sprite);

function IsometricCube:init(x, y)

    --- What the fuck is wrong with me?

    local startXPos = 0
    local startYPos = 8
    local distance = 16

    --- IsometricCusuper.init(self)
    self:moveTo(x, y);
    local isoCubeImage = gfx.image.new(32, 64);
    drawIsometricSquareToContext(startXPos, startYPos, distance,isoCubeImage)

    drawIsometricSquareToContext(startXPos, startYPos + distance, distance, isoCubeImage, {
        true, true, false, false
    })

    gfx.pushContext(isoCubeImage)

        startYPos = startYPos + distance

        gfx.drawLine(16, startYPos + distance / 2, 16, startYPos - distance / 2)
        gfx.drawLine(0, startYPos - distance, 0, startYPos)
        gfx.drawLine(31, startYPos, 31,startYPos - distance)

    gfx.popContext()
    self:setImage(isoCubeImage)
    self:add();
end

function drawIsometricSquare()

end