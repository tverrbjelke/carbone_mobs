-- doing some mock setup just for running outside minetest...
-- create mock-objects filled up with values so code of mod can be run standalone

-- FLAG to show mocking environment
local IS_MOCKING = true

-- creating global mock object
minetest = require "create_minetest_mock"

if minetest == nil
then 
   print ("Error loading and executing mock module... exiting")
   os.exit()
end

-- ------------------------------------
print (minetest.get_modpath("testmod").."/api.lua" )
print ("minetest.creative_mode="..minetest.creative_mode )

-- execute the init code of the to  be tested mod
-- with the mock alive
print ("loading test target...")
dofile("./init.lua")

-- -------------------------------------
print ("Run some tests on the target...")

-- <todo>
