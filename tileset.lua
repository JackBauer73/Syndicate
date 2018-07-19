local Tileset = {}
Tileset.image1 = {}
Tileset.image2 = {}
Tileset.TileTexture1 = {}
Tileset.TileTexture2 = {}

Tileset.map ={
    {0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
}

TILE_WIDTH = 64
TILE_HEIGHT = 47



function Tileset.load()
    -- variable et chargement des tileset
    image1 = love.graphics.newImage("images/Terrain 2.png")
    image2 = love.graphics.newImage("images/Terrain 1.png")

    -- Variable hauteur et largeur des tileset
    Tileset.image1.WIDTH = image1:getWidth()
    Tileset.image1.HEIGHT = image1:getHeight()
    Tileset.image2.WIDTH = image2:getWidth()
    Tileset.image2.HEIGHT = image2:getHeight()
    hauteurTile1 = Tileset.image1.HEIGHT
    largeurTile1 = Tileset.image1.WIDTH
    hauteurTile2 = Tileset.image2.HEIGHT
    largeurTile2 = Tileset.image2.WIDTH

    -- nbre de ligne et de colonne des tileset
    nbreColonneImage1 = math.floor(largeurTile1 / TILE_WIDTH)
    nbreLigneImage1 = math.floor(hauteurTile1 / TILE_HEIGHT)
    nbreColonneImage2 = math.floor(largeurTile2 / TILE_WIDTH)
    nbreLigneImage2 = math.floor(hauteurTile2 / TILE_HEIGHT)

    -- chargement des tiles dans le tileset
    local l,c,w,h
    local id = 1
    local coef = 1
    Tileset.TileTexture[0] = nil
    
    for l = 1,nbreLigneImage1 do
        for c = 1,nbreColonneImage1 do
                if l > nbreLigneImage1 and c > nbreColonneImage1 then
                    for w = 1, nbreColonneImage2 do
                        for h = 1, nbreLigneImage2 do
                            
                            

                        Tileset.TileTexture1[id] = love.graphics.newQuad (
                            (c-1) * TILE_WIDTH, (l-1) * TILE_HEIGHT + coef, 
                            TILE_WIDTH, TILE_HEIGHT, largeurTile1, hauteurTile1)
                        id = id + 1
                        end
                    end
                else
                    Tileset.TileTexture1[id] = love.graphics.newQuad (
                        (c-1) * TILE_WIDTH, (l-1) * TILE_HEIGHT + coef, 
                        TILE_WIDTH, TILE_HEIGHT, largeurTile1, hauteurTile1)
                    id = id + 1
                end
        end
        coef = coef + 2
    end
end

function Tileset.draw()
    -- Affichage ecran de la taille des tileset
    love.graphics.print("W:"..largeurTile1.." H:"..hauteurTile1,10, 10)
    love.graphics.print("W:"..largeurTile2.." H:"..hauteurTile2,10, 50)
    love.graphics.print("Nbre Colonne img1: "..nbreColonneImage1.." Nbre Ligne img1: "..nbreLigneImage1, 10, 100)
    love.graphics.print("Nbre Colonne img2: "..nbreColonneImage2.." Nbre Ligne img2: "..nbreLigneImage2, 10, 150)
    love.graphics.print("Chargement des "..#Tileset.TileTexture1.." images", 10,200)

    love.graphics.draw(image1, Tileset.TileTexture1[36], 10, 200-47*4,0,4,4)
    love.graphics.draw(image1, Tileset.TileTexture1[36], 10, 200,0,4,4)


end

return Tileset