local Tileset = {}



function Tileset.load()
    image1 = love.graphics.newImage("images/terrain_2_screen.png")
    image2 = love.graphics.newImage("images/terrain_screen.png")
    Tileset.image1.WIDTH = image1:getWidth()
    Tileset.image1.HEIGHT = image1:getHeight()
    Tileset.image2.WIDTH = image2:getWidth()
    Tileset.image2.HEIGHT = image2:getHeight()
end

function Tileset.draw()
    hauteurTile1 = Tileset.image1.HEIGHT
    hauteurTile2 = Tileset.image2.HEIGHT

    print(hauteurTile1)
    print(hauteurTile2)

end

return Tileset