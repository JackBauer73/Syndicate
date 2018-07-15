local Tileset = {}
Tileset.image1 = {}
Tileset.image2 = {}
Tileset.TileTexture1 = {}
Tileset.TileTexture2 = {}

Tileset.image1.map ={
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
Tileset.image2.map = {
    {0,0,0,0,0,0,0,0,0,0},
    {1,1,1,1,1,1,0,0,0,0},
    {1,1,1,1,1,0,0,0,0,0},
    {1,1,1,1,1,0,0,0,0,0},
    {1,1,1,1,1,1,1,0,0,0},
    {0,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,0,0,0,0,0,0,0,0},
    {1,1,0,0,0,0,0,0,0,0},
    {1,0,0,0,0,0,0,0,0,0},
    {1,1,0,0,0,0,0,0,0,0},
    {1,0,0,0,0,0,0,0,0,0},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,0,0,0,0,0,0,0,0},
    {1,1,1,1,1,1,1,1,1,0},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,0},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,0,0,0},
    {1,1,1,0,0,0,0,0,0,0},
    {1,1,1,1,1,1,1,1,1,1},
    {1,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0}
}
TILE_WIDHT = 64
TILE_HEIGHT = 48



function Tileset.load()
    -- variable et chargement des tileset
    image1 = love.graphics.newImage("images/terrain_2_screen.png")
    image2 = love.graphics.newImage("images/terrain_screen.png")

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
    nbreColonneImage1 = math.floor(largeurTile1 / TILE_WIDHT)
    nbreLigneImage1 = math.floor(hauteurTile1 / TILE_HEIGHT)
    nbreColonneImage2 = math.floor(largeurTile2 / TILE_WIDHT)
    nbreLigneImage2 = math.floor(hauteurTile2 / TILE_HEIGHT)

    -- chargement des tiles dans le tileset
    local l,c
    local id = 1
    local coef = 0
    Tileset.TileTexture1[0] = nil
    Tileset.TileTexture2[0] = nil
    for l = 1,nbreLigneImage1 do
        for c = 1,nbreColonneImage1 do
            Tileset.TileTexture1[id] = love.graphics.newQuad (
                (c-1) * largeurTile1, (l-1) * hauteurTile1 + coef, 
                largeurTile1, hauteurTile1, TILE_WIDHT, TILE_HEIGHT)
            id = id + 1
        end
        coef = coef + 1
    end
end

function Tileset.draw()
    -- Affichage ecran de la taille des tileset
    love.graphics.print("W:"..largeurTile1.." H:"..hauteurTile1,10, 10)
    love.graphics.print("W:"..largeurTile2.." H:"..hauteurTile2,10, 50)
    love.graphics.print("Nbre Colonne img1: "..nbreColonneImage1.." Nbre Ligne img1: "..nbreLigneImage1, 10, 100)
    love.graphics.print("Nbre Colonne img2: "..nbreColonneImage2.." Nbre Ligne img2: "..nbreLigneImage2, 10, 150)
    love.graphics.print("Chargement des "..#Tileset.TileTexture1.." images", 10,200)

    love.graphics.draw(image1, Tileset.TileTexture1[10], 10, 300)

end

return Tileset