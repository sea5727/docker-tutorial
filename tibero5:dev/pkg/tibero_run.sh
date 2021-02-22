#!/bin/sh

${TB_HOME}/config/gen_tip.sh;
tbboot nomount;
tbsql sys/tibero @${HOME}/scripts/create_db.sql
tbboot;
${TB_HOME}/scripts/system.sh;

# echo $TB_HOME >> /home/tibero/aab;
# echo $PKG_ROOT >> /home/tibero/bbb;
# echo $HOME >> /home/tibero/ccc;