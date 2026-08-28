--[[

scanners.luau
Last edited 8/27/2026

]]

-- // Misc. Variables

local scanners = {}

-- // Starts

function scanners.findInArray( hexArray : {number}, targetArray : {number} )
    
    for i=1, #hexArray - #targetArray + 1 do
        
        local found = true

        for x = 1, #targetArray do
            
            if hexArray[i + x - 1] ~= targetArray[x] then
                
                found = false
                break

            end

        end

        if found then
            
            return i, i + #targetArray - 1

        end

    end 

end

-- // Finish

return scanners
