--data.lua

local tablesigma {sat = 0.0, rough = 0.0, temp= 0.0, creep = 0.0}

local table sigmas = {{sigmas}}

local table tiles

function worldToSigma(x, y, sat, rough, temp, creep)
    get Sat from bodies of water. proceed to get sat from rain levels.
end
function changeTile(a,b,c)
    table.insert(tiles,{a,{b,c}})
    end
end

function updateTiles(tiles)
    set_tiles(tiles)
    table.clear(tiles)
end

function generateSigma(x,y)
    local quadrant = calculateQuadrant(x,y)
    worldToSigma(x, y, sigma)
    if(quadrant==1)
        x=-x
    else if(quadrant==2)
        y=-y
    else if(quadrant==3)
        x=-x
        y=-y
    end
    
    table.insert(tiles, quadrant, x, y, {sat, rough, temp, creep})
end

function calculateQuadrant(x, y)
    local enum=0
    
    if(x<0)
        enum++
    end
    if(y<0)
        enum+=2
    end
    return enum
end

function addSigma(x,y,sigmaType,value)
    local q = calculateQuadrant(x,y)
    sigmas[q][x][y][sigmaType]+=value
end

function setSigma(x,y,sigmaType,value)
    local q = calculateQuadrant(x,y)
    sigmas[q][x][y][sigmaType]=value
end