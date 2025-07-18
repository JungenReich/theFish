local controls = require("controls")
local tick = require("tick")

function love.load()
    controls.load()
    tick = require "tick"

    drawRectangle = false
    tick.delay(function () drawRectangle = true end,   2)
end

function love.update(dt)
    controls.update(dt)
    tick.update(dt)
end

function love.draw()
    love.graphics.rectangle("line", controls.x, controls.y, 200, 150)
    if drawRectangle then
        love.graphics.rectangle("fill", 100, 100, 300, 200)
    end
end