-- Lua script of map d_hoo/f0.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()

  -- You can initialize the movement and sprites of various
  -- map entities here.
  if f0maindoor:is_open() then f0mainroomswitch:set_activated(true) end
  if f0pitRoomPost:is_open() then f0pitRoomSwitch:set_activated(true) end
  if f0pitRoomPost_3:is_open() then f0pitRoomSwitch_2:set_activated(true) end
  if f01stKeyRoomPost:is_open() then f01stKeyRoomSwitch:set_activated(true) end
  -- water
  if drainwater then
    map:drainwater()
  else
    map:undrainwater()
  end
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end


function tutswitch:on_activated()
  tutwater:set_enabled(false)
  tutwater_2:set_enabled(false)
  tutwater_3:set_enabled(false)
  tutwater_4:set_enabled(false)
  tutwater_5:set_enabled(false)
  tutwater_6:set_enabled(false)
  tutwater_7:set_enabled(false)
  tutwater_8:set_enabled(false)
  tutwater_9:set_enabled(false)
  tutwater_10:set_enabled(false)
  tutwater_11:set_enabled(false)
--  tutwater_:set_enabled(false)
  sol.timer.start(500, function()
    tutswitch:set_enabled(false)
    tutswitch_2:set_enabled(true)
    tutswitch_2:set_activated(false)
  end)
end


function tutswitch_2:on_activated()
  tutwater:set_enabled(true)
  tutwater_2:set_enabled(true)
  tutwater_3:set_enabled(true)
  tutwater_4:set_enabled(true)
  tutwater_5:set_enabled(true)
  tutwater_6:set_enabled(true)
  tutwater_7:set_enabled(true)
  tutwater_8:set_enabled(true)
  tutwater_9:set_enabled(true)
  tutwater_10:set_enabled(true)
  tutwater_11:set_enabled(true)
--  tutwater_:set_enabled(true)
  sol.timer.start(500, function()
    tutswitch:set_enabled(true)
    tutswitch_2:set_enabled(false)
    tutswitch:set_activated(false)
  end)
end


function f0pitRoomSwitch:on_activated()
  f0pitRoomPost:open()
  f0pitRoomPost_2:open()
end

function f0pitRoomSwitch_2:on_activated()
  f0pitRoomPost_3:open()
end

function f0mainroomswitch:on_activated()
  f0maindoor:open()
end


function f01stKeyRoomSwitch:on_activated()
  f01stKeyRoomPost:open()
end



function map:drainwater()
  drainablewater:set_enabled(false)
  drainablewater_2:set_enabled(false)
  drainablewater_3:set_enabled(false)
  drainablewater_4:set_enabled(false)
  drainablewater_5:set_enabled(false)
  drainablewater_6:set_enabled(false)
  drainablewater_7:set_enabled(false)
  poolwater:set_enabled(false)
  poolwater_2:set_enabled(false)
  poolwater_3:set_enabled(false)
  poolwater_4:set_enabled(false)
end

function map:undrainwater()
  -- unhidewater
  drainablewater:set_enabled(true)
  drainablewater_2:set_enabled(true)
  drainablewater_3:set_enabled(true)
  drainablewater_4:set_enabled(true)
  drainablewater_5:set_enabled(true)
  drainablewater_6:set_enabled(true)
  drainablewater_7:set_enabled(true)
  poolwater:set_enabled(true)
  poolwater_2:set_enabled(true)
  poolwater_3:set_enabled(true)
  poolwater_4:set_enabled(true)
end