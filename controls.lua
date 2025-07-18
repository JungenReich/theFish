local controls = {}
controls.x = 100
controls.y = 100

function controls.load()
    controls.x = 100
    controls.y = 100
end

function controls.update(dt)
    if love.keyboard.isDown("right") then
        controls.x = controls.x + 100 * dt
    elseif love.keyboard.isDown("left") then
        controls.x = controls.x - 100 * dt
    end

    if love.keyboard.isDown("up") then
        controls.y = controls.y - 100 * dt
    elseif love.keyboard.isDown("down") then
        controls.y = controls.y + 100 * dt
    end
end

return controls