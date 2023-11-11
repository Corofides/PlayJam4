---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jameslendrem.
--- DateTime: 11/11/2023 14:31
---

import "CoreLibs/crank"

local pd <const> = playdate
local gfx <const> = pd.graphics

class("CrankMenu").extends(gfx.sprite)

function CrankMenu:init()
    CrankMenu.super.init(self);
    self.selectedWindow = 0;

    local displayWindow = function(x, y, selected)


        local currentColour = gfx.getColor()
        gfx.setColor(gfx.kColorWhite)
        gfx.pushContext();

            gfx.setColor(gfx.kColorWhite)
            gfx.fillRect(x, y, 32, 32)

            gfx.setColor(gfx.kColorBlack)
            if (selected) then
                gfx.drawRect(x + 2, y + 2, 28, 28)
            end


        gfx.popContext()
        gfx.setColor(currentColour)

    end

    local menuImage = gfx.image.new(40, 240)

    self:setCenter(0, 0)
    self:moveTo(400 - 40, 0)


    gfx.pushContext(menuImage)
        gfx.setColor(gfx.kColorBlack)
        gfx.fillRect(0, 0, 40, 240)
        for index = 0,10,1 do
            displayWindow(6, 6 + 38 * index, index == self.selectedWindow);
        end

    gfx.popContext()

    gfx.setColor(gfx.kColorWhite)

    self:setVisible(false)
    self:setImage(menuImage)
    self:add();
end

function CrankMenu:update()
    self:setVisible(not pd.isCrankDocked())

    local crankTicks <const> = pd.getCrankTicks(6)

    print("Crank Ticks" .. crankTicks)
    self.selectedWindow = (self.selectedWindow + crankTicks) % 10;

end