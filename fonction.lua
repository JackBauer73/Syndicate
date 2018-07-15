
-- fonction de colision
function collide(a1, a2)
    if (a1==a2) then return false end
    local dx = a1.x - a2.x
    local dy = a1.y - a2.y
        if (math.abs(dx) < a1.image:getWidth()+a2.image:getWidth()) then
            if (math.abs(dy) < a1.image:getHeight()+a2.image:getHeight()) then
            return true
            end
        end
    end
    return false
end
