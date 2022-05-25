Circle = Class{}

function Circle:init()
	self.color = {}
	self.color["r"] = math.random(0, 255)
	self.color["g"] = math.random(0, 255)
	self.color["b"] = math.random(0, 255)		
	self.x = math.random(0, WINDOW_WIDTH)
	self.y = math.random(0, WINDOW_HEIGHT)
	self.radius = math.random(50, 300)
end

function Circle:render()
	love.graphics.setColor(self.color["r"] / 255, self.color["g"] / 255, self.color["b"] / 255)
	love.graphics.circle("line", self.x, self.y, self.radius)
end