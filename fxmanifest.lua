fx_version 'cerulean'

game 'gta5'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/main.js',
    'html/style.css',
}

client_script 'client.lua'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}

-- you need kurwa podłaczyc javascripta bo ciezko u mnie z tym xd 