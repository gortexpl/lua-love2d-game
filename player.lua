player = {}
player.x = 10
player.y = 10
player.speed = 10
player.health = 20
player.damage = 2
player.pic = love.graphics.newImage("images/orc.png")

function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.draw(player.pic,player.x,player.y)
end

function player_move(dt)
	if love.keyboard.isDown("up") then
		player.y = player.y - player.speed 
	end
	if love.keyboard.isDown("down") then
		player.y = player.y + player.speed 
	end
	if love.keyboard.isDown("left") then
		player.x = player.x - player.speed 
	end
	if love.keyboard.isDown("right") then
		player.x = player.x + player.speed 
	end
end
