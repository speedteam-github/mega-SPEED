local function run(msg, matches) 
local text = '<code>SPEED VERSION </code> 4.2\ncreator : @black1m\nchannel : @speed_tg_ch\n bot support : @speed_support_bot\nsudo : @pouryapartoy @classic_sudo\ngood luck' 
return text 
end 
return { 
  patterns = { 
    "^!version$", 
    "^/version$", 
    "^#version$", 
  }, 
  run = run, 
} 
