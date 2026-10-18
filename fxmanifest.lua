-- Resource Metadata
author 'EnderDevelopment'
description 'House Robbery Script for FiveM ESX'
version '1.0.0'

-- Manifest Version
afx_version_cfx 'cerulean'

-- Game and FX Version
game 'gta5'
fx_version 'cerulean'

-- Resource Type
resource_type 'gametype' { name = 'House Robbery' }

-- Client Scripts
client_scripts {
    'client/main.lua',
    'client/lockpicking.lua',
    'client/soundlevel.lua',
    'client/cabinetsearch.lua'
}

-- Server Scripts
server_scripts {
    'server/main.lua'
}

-- UI Files
ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

-- Dependencies
dependency 'es_extended'