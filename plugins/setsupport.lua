 local function run(msg, matches) 
if matches[1] == "setsupport" then 
if not is_admin1(msg) then 
return 'شما سودو نیستید' 
end 
local support = matches[2] 
redis:set('bot:support',support) 
return 'ساپورت تنظیم شد' 
end 
if matches[1] == 'support' then 
if not is_momod(msg) then 
return 
end 
    local hash = ('bot:support') 
    local support = redis:get(hash) 
    if not support then 
    return ' ثبت نشده' 
    else 
    reply_msg(msg.id, support, ok_cb, false) 
    end 
    end 
if matches[1] == 'delsupport' then 
if not is_admin1(msg) then 
return 'شما ادمین نیستید' 
end 
    local hash = ('bot:support') 
    redis:del(hash) 
return ' پاک شد' 
end 
end 
return { 
patterns ={ 
"^[!#/](setsupport) (.*)$", 
"^[!#/](support)$", 
"^[!#/](delsupport)$", 
}, 
run = run 
} 
-- by @black1m 
-- channel: @speed_tg_ch 
-- GOOD luck B-)
