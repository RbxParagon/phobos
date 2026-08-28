--[[

converters.luau
Last edited 8/16/2026

]]

-- // Misc. Variables

local converters = {}

-- // Start

-- [Inputs]

function converters.getDebugId(inst : Instance)

    assert(typeof(inst) == "Instance", "type must be instance")
    return tonumber(inst:GetDebugId():match("_(%d+)$"))

end

-- [Input-Converts]

function converters.intToBytes(val : number)

    assert(typeof(val) == "number", "type must be number")
    return { val % 256, math.floor(val/256) % 256, math.floor(val/65536) % 256, math.floor(val/16777216) % 256 }

end

-- // Finish

return converters
