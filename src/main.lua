---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jameslendrem.
--- DateTime: 09/11/2023 10:56
---

import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "IsometricCube"
import "IsometricSquare"

local pd <const> = playdate
local gfx <const> = pd.graphics

local pdWidth <const> = 400;
local pdHeight <const> = 240

local startPosX <const> = 200;
local startPosY <const> = 144;

IsometricCube(startPosX, startPosY);
IsometricCube(startPosX - 32, startPosY - 32)


for i = 0,10,1 do

   local addY <const> = 16 * i;

   for y = 0,10,1 do
      --- isometricSquare = IsometricSquare(40 + 32 * y, 64 + addY)
   end

end



function playdate.update()
   --- Main Game Loop

   gfx.sprite.update()
   pd.timer.updateTimers()

end