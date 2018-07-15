local Tileset = {}
Tileset.image1 = {}
Tileset.image2 = {}
TILE_WIDHT = 64
TILE_HEIGHT = 48


function Tileset.load()
    --variable et chargement des tileset
    image1 = love.graphics.newImage("images/terrain_2_screen.png")
    image2 = love.graphics.newImage("images/terrain_screen.png")
    --variable hauteur et largeur des tileset
    Tileset.image1.WIDTH = image1:getWidth()
    Tileset.image1.HEIGHT = image1:getHeight()
    Tileset.image2.WIDTH = image2:getWidth()
    Tileset.image2.HEIGHT = image2:getHeight()
    -- chargement des tiles dans le tileset
    -- for i=1,Tileset.
end

function Tileset.draw()
    hauteurTile1 = Tileset.image1.HEIGHT
    largeurTile1 = Tileset.image1.WIDTH
    hauteurTile2 = Tileset.image2.HEIGHT
    largeurTile2 = Tileset.image2.WIDTH

    love.graphics.print("W:"..largeurTile1.." H:"..hauteurTile1,10,10)
    love.graphics.print("W:"..largeurTile2.." H:"..hauteurTile2,50,10)

end

return Tileset