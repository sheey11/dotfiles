#!/bin/bash

caddyfile="sheey.moe {
    root /var/www/sheey.moe/public
    log /var/www/logs/sheey.moe.log
    gzip
    header / Strict-Transport-Security \"max-age=31536000\"
    errors {
        404 404.html
    }
    git {
        repo https://github.com/Sheey11/sheey.moe.git
        path ../tmp
        pull_args -f
        branch master
        interval 300
        then sh /var/www/sheey.moe/build.sh
    }
}

www.sheey.moe {
    redir https://sheey.moe
}

api.sheey.moe {
    proxy / localhost:3000
}"

# success, faild, deadly
lastCmdSuccess(){
    if [ $? -ne 0 ]; then
        echo $2
        if [ $3 != 1 ]; then
            exit -1
        fi
    else
        echo $1
    fi
}

# detect if installed hexo-cli
installed_plugin=$(npm list -g -depth=0)
if [[ !($installed_plugin =~ "hexo-cli") ]]; then
    echo installing hexo-cli...
    npm install -g hexo-cli --silent
    lastCmdSuccess "successfully installed hexo-cli." "install hexo-cli faild." 1
fi

# install caddy
if ! [ -x "$(command -v caddy)" ]; then
    echo installing caddy...
    CADDY_TELEMETRY=off
    curl https://getcaddy.com | bash -s personal http.git
    lastCmdSuccess "installed successfully." "install faild." 1
fi

# init hexo
hexo init sheey.moe
cd sheey.moe
echo $caddyfile > Caddyfile

git clone https://github.com/Molunerfinn/hexo-theme-melody.git themes/melody
npm install hexo-renderer-pug hexo-renderer-stylus --save
npm install hexo-tag-hint hexo-tag-aplayer hexo-generator-search --save

npm un hexo-renderer-marked --save
npm i @upupming/hexo-renderer-markdown-it-plus --save

caddy -conf Caddyfile
