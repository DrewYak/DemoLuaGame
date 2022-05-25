Class = require "class"

require "Circle"

WINDOW_WIDTH = 1600
WINDOW_HEIGHT = 900

function love.load()
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = true,
		resizable = true,
		vsync = true
	})
	love.window.setTitle('Demo Lua Game')

	gameState = "start"
	circles = {}

	math.randomseed(os.time())
end

function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
	elseif key == "a" then
		gameState = "circle"
	end
end

function love.keyreleased(key, scancode)
	if key == "a" then
		if gameState == "circle" then
			gameState = "start"
		end
	end	
end

function love.update(dt)
	if gameState == "circle" then
		c = Circle()
		table.insert(circles, c)
	end
end

function love.draw()
	for k, c in ipairs(circles)
	do
		c:render()
	end
end