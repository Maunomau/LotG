-- Lua script of map first_map.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()





-- could do this better
function map:drainwater()
  drainablewater:set_enabled(false)
  -- hide water
  drainablewater:set_enabled(false)
  --drainablewater_1:set_enabled(false)
  drainablewater_2:set_enabled(false)
  drainablewater_3:set_enabled(false)
  drainablewater_4:set_enabled(false)
  drainablewater_5:set_enabled(false)
  drainablewater_6:set_enabled(false)
  drainablewater_7:set_enabled(false)
  drainablewater_8:set_enabled(false)
  drainablewater_9:set_enabled(false)
  drainablewater_10:set_enabled(false)
  --drained
  drainablewater_11:set_enabled(true)
  drainablewater_12:set_enabled(true)
  drainablewater_13:set_enabled(true)
  drainablewater_14:set_enabled(true)
  drainablewater_15:set_enabled(true)
  --westroom
  drainablewater_16:set_enabled(false)
  drainablewater_17:set_enabled(false)
  drainablewater_18:set_enabled(false)
  drainablewater_19:set_enabled(false)
  --edges
  drainablewater_20:set_enabled(false)
  drainablewater_21:set_enabled(false)
  drainablewater_22:set_enabled(false)
  drainablewater_23:set_enabled(false)
  drainablewater_24:set_enabled(false)
  drainablewater_25:set_enabled(false)
  drainablewater_26:set_enabled(false)
  drainablewater_27:set_enabled(false)
  --beyond main gates
  drainablewater_28:set_enabled(false)
  drainablewater_29:set_enabled(false)
  --waterfalls at entrance
  drainablewater_30:set_enabled(false)
  drainablewater_31:set_enabled(false)
  drainablewater_32:set_enabled(false)
  drainablewater_33:set_enabled(false)
  --postgate west pool
  drainablewater_35:set_enabled(false)
  drainablewater_36:set_enabled(false)
  drainablewater_37:set_enabled(false)
  drainablewater_38:set_enabled(false)
  waterjumper:set_enabled(true)
  waterjumper_2:set_enabled(true)
  waterjumper_3:set_enabled(true)
  --water and waterfalls at the end
  waterfall_water:set_enabled(true)
  waterfall:set_enabled(true)
  waterfall_2:set_enabled(true)
  waterfall_3:set_enabled(true)
  waterfall_4:set_enabled(true)
  waterfall_5:set_enabled(true)
  waterfall_6:set_enabled(true)
  waterfall_7:set_enabled(true)
  --tele back to upper floor
  drainabletele:set_enabled(false)
  --print("no water")
  --replace switch with one that does the opposite
  sol.timer.start(500, function()
    watervalve_1:set_enabled(false)
    watervalve_2:set_enabled(true)
    watervalve_2:set_activated(false)
  end)
  
end

function map:undrainwater()
  -- unhidewater
  drainablewater:set_enabled(true)
  --drainablewater_1:set_enabled(true)
  drainablewater_2:set_enabled(true)
  drainablewater_3:set_enabled(true)
  drainablewater_4:set_enabled(true)
  drainablewater_5:set_enabled(true)
  drainablewater_6:set_enabled(true)
  drainablewater_7:set_enabled(true)
  drainablewater_8:set_enabled(true)
  drainablewater_9:set_enabled(true)
  drainablewater_10:set_enabled(true)
  --drained
  drainablewater_11:set_enabled(false)
  drainablewater_12:set_enabled(false)
  drainablewater_13:set_enabled(false)
  drainablewater_14:set_enabled(false)
  drainablewater_15:set_enabled(false)
  --westroom
  drainablewater_16:set_enabled(true)
  drainablewater_17:set_enabled(true)
  drainablewater_18:set_enabled(true)
  drainablewater_19:set_enabled(true)
  --edges
  drainablewater_20:set_enabled(true)
  drainablewater_21:set_enabled(true)
  drainablewater_22:set_enabled(true)
  drainablewater_23:set_enabled(true)
  drainablewater_24:set_enabled(true)
  drainablewater_25:set_enabled(true)
  drainablewater_26:set_enabled(true)
  drainablewater_27:set_enabled(true)
  --beyond main gates
  drainablewater_28:set_enabled(true)
  drainablewater_29:set_enabled(true)
  --waterfalls at entrance
  drainablewater_30:set_enabled(true)
  drainablewater_31:set_enabled(true)
  drainablewater_32:set_enabled(true)
  drainablewater_33:set_enabled(true)
  --postgate west pool
  drainablewater_35:set_enabled(true)
  drainablewater_36:set_enabled(true)
  drainablewater_37:set_enabled(true)
  drainablewater_38:set_enabled(true)
  waterjumper:set_enabled(false)
  waterjumper_2:set_enabled(false)
  waterjumper_3:set_enabled(false)
  --water and waterfalls at the the end
  waterfall_water:set_enabled(false)
  waterfall:set_enabled(false)
  waterfall_2:set_enabled(false)
  waterfall_3:set_enabled(false)
  waterfall_4:set_enabled(false)
  waterfall_5:set_enabled(false)
  waterfall_6:set_enabled(false)
  waterfall_7:set_enabled(false)
  -- tele back to upper floor
  drainabletele:set_enabled(true)
  --print("water")
  --replace switch with one that does the opposite
  sol.timer.start(500, function()
    watervalve_1:set_enabled(true)
    watervalve_2:set_enabled(false)
    watervalve_1:set_activated(false)
  end)
  
end

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()

  -- You can initialize the movement and sprites of various
  -- map entities here.
  if drainwater then
    map:drainwater()
  else
    map:undrainwater()
  end

  print(d3_maingate1)
  
  -- Make some switches remain activated(is there a better way? I suppose ideally I'd allow deactivating but that's annoying to do)
  -- Wait why did I think switches reset on their own? Because they do sometimes. If state of a door that switch opens is saved then the switch somehow recognizes that?
  -- Or huh? I think I got confused by at some point not changing floor and just changing "screen" when testing
  if d3_maingate1_2:is_open() then main_lever_1:set_activated(true) end
  if d3_maingate2_2:is_open() then main_lever_2:set_activated(true) end
  if d3_maingate3_2:is_open() then main_lever_3:set_activated(true) end
  if d3_maingate4_2:is_open() then main_lever_4:set_activated(true) end
  if f1Eastpostdoor:is_open() then f1EastSwitch:set_activated(true) end
  if f1Eastpostdoor_2:is_open() then f1EastSwitch_2:set_activated(true) end
  if f1Eastdoor:is_open() then f1EastSwitch_3:set_activated(true) end
  if f1pitroomdoor:is_open() then f1pitroomswitch:set_activated(true) end
  if f1nwDoor:is_open() then f1nwSwitch:set_activated(true) end
  if f1EntranceShutter:is_open() then EntranceShutterSwitch:set_activated(true) end
  if f1PostGateShutterWest:is_open() then f1PostGateShutterWestSwitch:set_activated(true) end
  if f1SEDoorOfLastRoom:is_open() then f1LastRoomSwitch_2:set_activated(true) end
  if f1LastRoom:is_open() then f1LastRoomSwitch:set_activated(true) end
  if postgatedoor_3:is_open() then postgateswitch:set_activated(true) end
  if postgatedoor_5:is_open() then postgateswitch_2:set_activated(true) end
  if f1ne_postdoor:is_open() then f1ne_switch:set_activated(true) end
  --if _door:is_open() then _switch:set_activated(true) end


  

end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end

function f1EastSwitch:on_activated()
  f1Eastpostdoor:open()
end

function f1EastSwitch_2:on_activated()
  f1Eastpostdoor_2:open()
end

function f1EastSwitch_3:on_activated()
  f1Eastdoor:open()
end

function f1pitroomswitch:on_activated()
  f1pitroomdoor:open()
end

function f1nwSwitch:on_activated()
  f1nwDoor:open()
end

function EntranceShutterSwitch:on_activated()
  f1EntranceShutter:open()
end

function f1PostGateShutterWestSwitch:on_activated()
  f1PostGateShutterWest:open()
end

function main_lever_1:on_activated()
  --d3_maingate1:open()
  map:open_doors("d3_maingate1")
end

function main_lever_2:on_activated()
  map:open_doors("d3_maingate2")
end

function main_lever_3:on_activated()
  map:open_doors("d3_maingate3")
end

function main_lever_4:on_activated()
  map:open_doors("d3_maingate4")
end

function f1LastRoomSwitch:on_activated()
  map:open_doors("f1LastRoom")

end

function f1LastRoomSwitch_2:on_activated()
  f1SEDoorOfLastRoom:open()
end

function postgateswitch:on_activated()
  postgatedoor_3:open()
end

function postgateswitch_2:on_activated()
  postgatedoor_5:open()
end

function f1ne_switch:on_activated()
  f1ne_postdoor:open()
end

--function _switch:on_activated()
--  _door:open()
--end

function watervalve_1:on_activated()
  drainwater = true
  map:drainwater()
end

function watervalve_2:on_activated()
  drainwater = false
  map:undrainwater()

end

--Layer shenanigans

function d3_f1_l_up:on_activated()
  local x, y, layer = hero:get_position()
  hero:set_position(x, y, layer + 1)
  sol.movement.create("target"):start(robyne)
end

function d3_f1_l_down:on_activated()
  local x, y, layer = hero:get_position()
  hero:set_position(x, y, layer - 1)
	assert(map, "Went down")
end

function f1m_d_1:on_opened()
  print("open")
end

function f1m_d_1:on_closed()
  print("closed")
end