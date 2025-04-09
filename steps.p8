pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
function _init()
 player={
  x=60,
  y=60,
  sprite=1,
  direction="right",
  tick=0,
  state="idle",
  anims={
    idle={1,1,,6,6},
    walking={2,3,4,5}
  }
 }
end

function _update60()
 
 if (btn(0)) then 
  player.x=player.x-0.5 
  player.state="walking"
  player.direction="left"
 elseif (btn(1)) then 
  player.x=player.x+0.5 
  player.state="walking"
  player.direction="right"
 elseif (btn(2)) then 
  player.state="walking"
  player.y=player.y-0.5
 elseif (btn(3)) then 
  player.state="walking"
  player.y=player.y+0.5 
 else 
  player.state="idle"
 end
 
 animate(player)
 
end

function _draw()
 cls(0)
 spr(player.sprite,player.x,player.y,1,1,player.direction=="left")
end

function animate(p)

  player.tick=player.tick+1

  if p.state == "walking" then
    -- Calculate the current frame index for the walking animation
    local frame_index = flr(p.tick / 8) % #p.anims.walking + 1
    -- Set the sprite to the corresponding frame
    p.sprite = p.anims.walking[frame_index]
  elseif p.state == "idle" then
    -- Calculate the current frame index for the walking animation
    local frame_index = flr(p.tick / 8) % #p.anims.idle + 1
    -- Set the sprite to the corresponding frame
    p.sprite = p.anims.idle[frame_index]
  else
    -- Default to the idle sprite
    p.sprite = p.anims.idle[1]
  end
end
__gfx__
00000000000e800000000000000e8000000e80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000088f800000e80000088f8000088f800000e8000000e8000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000230000088f80000023000000230000088f8000088f800000000000000000000000000000000000000000000000000000000000000000000000000
000770000022b2000022b2000022b2000002b2000022b2000022b200000000000000000000000000000000000000000000000000000000000000000000000000
00077000002f22f00f02220000f022f00002f20000f022f000222200000000000000000000000000000000000000000000000000000000000000000000000000
007007000000ee000000ee000000ee000000ee000000ee0000f0eef0000000000000000000000000000000000000000000000000000000000000000000000000
000000000007f000007700f000070f000007f700000f00700007f000000000000000000000000000000000000000000000000000000000000000000000000000
000000000007f0000700000f00700f000000f00000f000700007f000000000000000000000000000000000000000000000000000000000000000000000000000
