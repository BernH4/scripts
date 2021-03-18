#!/bin/bash 

vim /home/ubuntu/vimwiki/index.wiki -c "VimwikiAll2HTML"
sudo cp -r /home/ubuntu/vimwiki_html/* /var/www/html/
