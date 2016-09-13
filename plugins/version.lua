local function run(msg, matches) 
local text = '<code>اسپید</code> <a href="https://telegram.me/speed_tg">ورژن 5.2</a>\n\n گرد آورنده <a href="https://telegram.me/black1m">#Mr black1</a>\n\n <a href="https://telegram.me/speed_tg_ch">کانال</a> اختصاصی\n<i>SPEED TEAM</i>' 
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
