
-- Lua script of item small_key.
-- This script is executed only once for the whole game.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest
local item = ...

function item:on_created()

  self:set_shadow("small")
  self:set_brandish_when_picked(false)
  self:set_sound_when_picked("picked_small_key")
end

function item:on_obtaining(variant, savegame_variable)

  --self:get_game():add_small_key()
  --local amounts = { 1, 3, 5, 10, 20 }
  --local amount = amounts[variant]
  --if amount == nil then
  --  error("Invalid variant '" .. variant .. "' for item 'small_key'")
  --end

  --game:get_item("small_key"):add_amount(amount)

  --self:get_game():add_small_key()
  --print("got key? Got "&self:get_amount())
end



-- Event called when all items have been created.
function item:on_started()

  -- Initialize the properties of your item here,
  -- like whether it can be saved, whether it has an amount
  -- and whether it can be assigned.

  self:set_savegame_variable("smallkeys")
  self:set_assignable(true)
  self:set_amount_savegame_variable("smallkeys")
  self:set_max_amount(10)
end

-- Event called when the hero starts using this item.
function item:on_using()

  -- Define here what happens when using this item
  -- and call item:set_finished() to release the hero when you have finished.
  item:set_finished()
end

-- Event called when a pickable treasure representing this item
-- is created on the map.
function item:on_pickable_created(pickable)

  -- You can set a particular movement here if you don't like the default one.
end
