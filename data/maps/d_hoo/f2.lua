-- Lua script of map d_hoo/f2.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()




function map:drainwater()
  drainablewater_12:set_enabled(true)
  drainablewater_13:set_enabled(true)
  drainablewater_14:set_enabled(true)
  drainablewater_15:set_enabled(true)
  drainablewater_16:set_enabled(true)
  drainablewater_17:set_enabled(true)
  drainablewater_18:set_enabled(true)
  --drainablewater_19:set_enabled(true)
  map:undrainpoolwater()
  print("no water")
  
end



function map:undrainwater()
  drainablewater_12:set_enabled(false)
  drainablewater_13:set_enabled(false)
  drainablewater_14:set_enabled(false)
  drainablewater_15:set_enabled(false)
  drainablewater_16:set_enabled(false)
  drainablewater_17:set_enabled(false)
  drainablewater_18:set_enabled(false)
  --drainablewater_19:set_enabled(false)
  map:drainpoolwater()
  print("water")
  
end


function map:drainpoolwater()
  poolwater:set_enabled(false)
  poolwater_2:set_enabled(false)
  poolwater_3:set_enabled(false)
  poolwater_4:set_enabled(false)
  poolwater_5:set_enabled(false)
  poolwater_6:set_enabled(false)
  poolwater_7:set_enabled(false)
  poolwater_8:set_enabled(false)
  poolwater_9:set_enabled(false)
  poolwater_10:set_enabled(false)
  poolwater_11:set_enabled(false)
  poolwater_12:set_enabled(false)
  poolwater_13:set_enabled(false)
  poolwater_14:set_enabled(false)
  poolwater_15:set_enabled(false)
  poolwater_16:set_enabled(false)
  poolwater_17:set_enabled(false)
  poolwater_18:set_enabled(false)
  poolwater_19:set_enabled(false)
  poolwater_20:set_enabled(false)
  poolwater_21:set_enabled(false)
  poolwater_22:set_enabled(false)
  poolwater_23:set_enabled(false)
  poolwater_24:set_enabled(false)
  poolwater_25:set_enabled(false)
  
end


function map:undrainpoolwater()
  poolwater:set_enabled(true)
  poolwater_2:set_enabled(true)
  poolwater_3:set_enabled(true)
  poolwater_4:set_enabled(true)
  poolwater_5:set_enabled(true)
  poolwater_6:set_enabled(true)
  poolwater_7:set_enabled(true)
  poolwater_8:set_enabled(true)
  poolwater_9:set_enabled(true)
  poolwater_10:set_enabled(true)
  poolwater_11:set_enabled(true)
  poolwater_12:set_enabled(true)
  poolwater_13:set_enabled(true)
  poolwater_14:set_enabled(true)
  poolwater_15:set_enabled(true)
  poolwater_16:set_enabled(true)
  poolwater_17:set_enabled(true)
  poolwater_18:set_enabled(true)
  poolwater_19:set_enabled(true)
  poolwater_20:set_enabled(true)
  poolwater_21:set_enabled(true)
  poolwater_22:set_enabled(true)
  poolwater_23:set_enabled(true)
  poolwater_24:set_enabled(true)
  poolwater_25:set_enabled(true)
  
end

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()

  -- You can initialize the movement and sprites of various
  -- map entities here.
  -- I'd like blocks to not reset until you tell them to so that you can move a block into position you can hook to
  --f2b_1:set_position(f2b_1x, f2b_1y)
  --f2b_2:set_position(f2b_2x, f2b_2y)
  --f2b_3:set_position(f2b_3x, f2b_3y)
  
  if drainwater then
    map:drainwater()
  else
    map:undrainwater()
  end

  if f2mainroomdoor:is_open() then f2mainroomswitch:set_activated(true) end
  if f2mainroomdoor_3:is_open() then f2mainroomswitch_2:set_activated(true) end
  if f2pitroomdoor:is_open() then f2pitroomswitch_2:set_activated(true) end
  if f2pitroom_postdoor:is_open() then f2pitroomswitch:set_activated(true) end
  if f2nwdoor:is_open() then f2nwdoorswitch:set_activated(true) end
  if f2LowerPoolDoor:is_open() then f2LowerPoolSwitch:set_activated(true) end


end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()


end

function f2b_1:on_moved()
  --set f2b_1x = f2b_1:get_position(1)
  --set f2b_1y = f2b_1:get_position(2)
end


function f2mainroomswitch:on_activated()
  f2mainroomdoor:open()
  f2mainroomdoor_5:open()
end

function f2mainroomswitch_2:on_activated()
  f2mainroomdoor_3:open()
end


function f2pitroomswitch:on_activated()
  f2pitroom_postdoor:open()
end

function f2pitroomswitch_2:on_activated()
  f2pitroomdoor:open()
end

function f2nwdoorswitch:on_activated()
  f2nwdoor:open()
end

function f2LowerPoolSwitch:on_activated()
  f2LowerPoolDoor:open()
end

