-- returns a mock object of minetest

-------------------------------------------------------
-- mock "object" holding global stuff
-------------------------------------------------------

-- todo: local or not?
minetest = {}

local minetest.creative_mode = "false"

local minetest.registered_nodes = { }

-------------------------------------------------------
-- some stubs just that the mod formally compiles/runs
-------------------------------------------------------

-- used to return the path to the current mod, no trailing PATHSEP "/"
function minetest.get_modpath(mod_path)
   print ("minetest.get_modpath: " .. mod_path )
   print (minetest)
   local testdir = "."
   return testdir
end

-- used to determine values of minetest.conf
function minetest.setting_get(varname)
   return nil 
end

function minetest.setting_getbool(varname)
   print ("minetest:setting_getbool" .. varname)
   return false
end

function minetest.pos_to_string(pos)
   print ("minetest:pos_to_string:" .. tostring(pos) )
   return "position thing"
end

-- used to (over)write new values of minetest.conf
function minetest.setting_set(var, val)
   print ("minetest:setting_set:" .. tostring(var) .. tostring(val))
end

function minetest.register_entity(name, val)
   print ("minetest:register_entity (" .. tostring(name) .."," .. tostring(val)..")")
   if ( minetest.registered_entities[name] ~= nil) 
   then 
      print("Error, already registered " .. name)
   else 
      print ("ADDING")
      minetest[name] = val
      print ( "added".. tostring( minetest[name]) )
   end
end

function minetest.add_entity(entity, name)
   print ("minetest:add_entity:" .. tostring(entity) .. tostring(name))
end

-- dummy node so code can call functions on it
local node = {}

function node.walkable() 
   print ("node:walkable")
   return false 
end

function minetest.get_node(node_name)
   print ("minetest:get_node:" .. tostring(node_name))
   return node
end


function minetest.get_objects_inside_radius(pos, radius)
   print ("minetest:get_objects_inside_radius:" .. tostring(pos) .. tostring(radius))
   return nil
end

function minetest.register_craftitem( name , item )
   print ("minetest:register_craftitem:" .. tostring(name) .. tostring(item))
end

-- returns on_use function - replace is ignored here
function minetest.item_eat(num, replace)
   print ("minetest.item_eat:" .. tostring(num))
   return nil
end

function minetest.register_craft( thing )
   print ("minetest:register_craft:" .. tostring(ting) )
end
   
function minetest.log(text)
   print (text)
end

function minetest.register_alias ( name, alias)
end


return minetest -- todo: by reference? or as copy?
