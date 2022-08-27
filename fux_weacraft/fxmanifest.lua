fx_version 'adamant'
game 'gta5'

author 'Fuxlor#4367'

description 'Script de craft d\'arme'

version '1.0'

client_scripts {
    '@es_extended/locale.lua',  
    'client/cl_weacraft.lua',
    'client/cl_point.lua',
    'config.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/sv_weacraft.lua',
    'config.lua'
}


files {
    'html/index.html',
    'html/script.js',
    'html/css.css',
    'html/img/assault_rifle.png',
    'html/img/heavy_revolver.png',
    'html/img/pistol.png',
    'html/img/smg.png',
    'html/font/LouisGeorgerCafe.ttf',

}

ui_page 'html/index.html'