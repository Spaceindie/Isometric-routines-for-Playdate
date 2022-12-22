-- BASIC ISOMETRIC GRID 
-- Land Patricio 2022


import 'CoreLibs/object'
import 'CoreLibs/sprites'
import "CoreLibs/graphics"

local geo <const> = playdate.geometry
local pd <const> = playdate
local gfx <const> = pd.graphics
separacion = 0
columna = 0 
xpos = 80
ypos = 100

local spritesheet = nil -- this will be the image table

local map = nil -- this is the tile map

function init() -- needs to be called before update
  

-- This routine will create an isometric grid on screen with isometric graphichs

local map = {}
  for i = 1, 6 do
    map [i] = {} -- se crea una nueva fila
    for j = 1, 6 do
      map [i][j] = gfx.sprite.new()
      map [i][j]:add()
    end
end


-- FILE 1
tile1Image = gfx.image.new("/images/A.png")

  map [1][1] = gfx.sprite.new(tile1Image)
  map [1][1]: add()
  map [1][1]:moveTo(200,16)


 -- FILE 2 
  tile1Image = gfx.image.new("/images/B.png")

  map [2][1] = gfx.sprite.new(tile1Image)
  map [2][1]: add()
  map [2][1]:moveTo(200 - 16, 24)

  tile1Image = gfx.image.new("/images/D.png")

  map [1][2] = gfx.sprite.new(tile1Image)
  map [1][2]: add()
  map [1][2]:moveTo(200 + 16,24)


  -- FILE 3

  tile1Image = gfx.image.new("/images/B.png")

  map [3][1] = gfx.sprite.new(tile1Image)
  map [3][1]: add()
  map [3][1]:moveTo(200 - 32, 32)


  tile1Image = gfx.image.new("/images/G.png")

  map [2][2] = gfx.sprite.new(tile1Image)
  map [2][2]: add()
  map [2][2]:moveTo(200, 32)


  tile1Image = gfx.image.new("/images/D.png")

  map [1][3] = gfx.sprite.new(tile1Image)
  map [1][3]: add()
  map [1][3]:moveTo(200 + 32 , 32)


  
-- FILE 4


tile1Image = gfx.image.new("/images/B.png")

map [4][1] = gfx.sprite.new(tile1Image)
map [4][1]: add()
map [4][1]:moveTo(200 - 48, 40)

tile1Image = gfx.image.new("/images/G.png")

map [3][2] = gfx.sprite.new(tile1Image)
map [3][2]: add()
map [3][2]:moveTo(200 - 16, 40)


tile1Image = gfx.image.new("/images/G.png")

map [2][3] = gfx.sprite.new(tile1Image)
map [2][3]: add()
map [2][3]:moveTo(200 + 16,  40)


tile1Image = gfx.image.new("/images/D.png")

map [1][4] = gfx.sprite.new(tile1Image)
map [1][4]: add()
map [1][4]:moveTo(200 + 48, 40)



-- FILE 5

tile1Image = gfx.image.new("/images/B.png")

map [5][1] = gfx.sprite.new(tile1Image)
map [5][1]: add()
map [5][1]:moveTo(200 - 64, 48)

tile1Image = gfx.image.new("/images/G.png")

map [4][2] = gfx.sprite.new(tile1Image)
map [4][2]: add()
map [4][2]:moveTo(200 -32, 48)


tile1Image = gfx.image.new("/images/G.png")

map [3][3] = gfx.sprite.new(tile1Image)
map [3][3]: add()
map [3][3]:moveTo(200, 48)


tile1Image = gfx.image.new("/images/G.png")

map [4][2] = gfx.sprite.new(tile1Image)
map [4][2]: add()
map [4][2]:moveTo(200 +32, 48)


tile1Image = gfx.image.new("/images/D.png")

map [1][5] = gfx.sprite.new(tile1Image)
map [1][5]: add()
map [1][5]:moveTo(200 + 64, 48)



-- FILE 6

tile1Image = gfx.image.new("/images/F.png")

map [6][1] = gfx.sprite.new(tile1Image)
map [6][1]: add()
map [6][1]:moveTo(200 - 80, 56)

tile1Image = gfx.image.new("/images/G.png")

map [5][2] = gfx.sprite.new(tile1Image)
map [5][2]: add()
map [5][2]:moveTo(200 - 48, 56)

tile1Image = gfx.image.new("/images/G.png")

map [4][3] = gfx.sprite.new(tile1Image)
map [4][3]: add()
map [4][3]:moveTo(200 - 16, 56)

tile1Image = gfx.image.new("/images/G.png")

map [3][4] = gfx.sprite.new(tile1Image)
map [3][4]: add()
map [3][4]:moveTo(200 + 16 , 56)


tile1Image = gfx.image.new("/images/G.png")

map [2][5] = gfx.sprite.new(tile1Image)
map [2][5]: add()
map [2][5]:moveTo(200 + 48, 56)


tile1Image = gfx.image.new("/images/C.png")

map [1][6] = gfx.sprite.new(tile1Image)
map [1][6]: add()
map [1][6]:moveTo(200 + 80, 56)



-- FILE 7

tile1Image = gfx.image.new("/images/D.png")

map [6][2] = gfx.sprite.new(tile1Image)
map [6][2]: add()
map [6][2]:moveTo(200 - 64, 64)


tile1Image = gfx.image.new("/images/G.png")

map [5][3] = gfx.sprite.new(tile1Image)
map [5][3]: add()
map [5][3]:moveTo(200 - 32, 64)

tile1Image = gfx.image.new("/images/G.png")

map [4][4] = gfx.sprite.new(tile1Image)
map [4][4]: add()
map [4][4]:moveTo(200, 64)

tile1Image = gfx.image.new("/images/G.png")

map [3][5] = gfx.sprite.new(tile1Image)
map [3][5]: add()
map [3][5]:moveTo(200 + 32, 64)

tile1Image = gfx.image.new("/images/B.png")

map [2][6] = gfx.sprite.new(tile1Image)
map [2][6]: add()
map [2][6]:moveTo(200 + 64, 64)


-- FILE 8

tile1Image = gfx.image.new("/images/D.png")

map [6][3] = gfx.sprite.new(tile1Image)
map [6][3]: add()
map [6][3]:moveTo(200 - 48, 72)

tile1Image = gfx.image.new("/images/G.png")

map [5][4] = gfx.sprite.new(tile1Image)
map [5][4]: add()
map [5][4]:moveTo(200 - 16, 72)

tile1Image = gfx.image.new("/images/G.png")

map [4][5] = gfx.sprite.new(tile1Image)
map [4][5]: add()
map [4][5]:moveTo(200 + 16, 72)

tile1Image = gfx.image.new("/images/B.png")

map [3][6] = gfx.sprite.new(tile1Image)
map [3][6]: add()
map [3][6]:moveTo(200 + 48, 72)


-- FILA 9

tile1Image = gfx.image.new("/images/D.png")

map [6][4] = gfx.sprite.new(tile1Image)
map [6][4]: add()
map [6][4]:moveTo(200 - 32, 80)

tile1Image = gfx.image.new("/images/G.png")

map [6][4] = gfx.sprite.new(tile1Image)
map [6][4]: add()
map [6][4]:moveTo(200 , 80)


tile1Image = gfx.image.new("/images/B.png")

map [4][6] = gfx.sprite.new(tile1Image)
map [4][6]: add()
map [4][6]:moveTo(200 + 32, 80)


-- FILE 10

tile1Image = gfx.image.new("/images/D.png")

map [6][5] = gfx.sprite.new(tile1Image)
map [6][5]: add()
map [6][5]:moveTo(200 - 16, 88)


tile1Image = gfx.image.new("/images/B.png")

map [5][6] = gfx.sprite.new(tile1Image)
map [5][6]: add()
map [5][6]:moveTo(200 + 16, 88)


-- FILE 11


tile1Image = gfx.image.new("/images/E.png")

map [6][6] = gfx.sprite.new(tile1Image)
map [6][6]: add()
map [6][6]:moveTo(200, 96)



end -- del init

init ()

function playdate.update()

	gfx.sprite.update()

  -- Show the tile map starting at X = 10, Y = 10 on screen 


end 


