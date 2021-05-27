#!/usr/bin/with-contenv bash
# shellcheck shell=bash
#####################################
# All rights reserved.              #
# started from Zero                 #
# Docker owned dockserver           #
# Docker Maintainer dockserver      #
#####################################
#####################################
# THIS DOCKER IS UNDER LICENSE      #
# NO CUSTOMIZING IS ALLOWED         #
# NO REBRANDING IS ALLOWED          #
# NO CODE MIRRORING IS ALLOWED      #
#####################################
# shellcheck disable=SC2086
# shellcheck disable=SC2006
appstartup() {
if [[ $EUID -ne 0 ]];then
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔  You must execute as a SUDO user (with sudo) or as ROOT!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
exit 0
fi
while true;do
  $(command -v apt) update -yqq && $(command -v apt) upgrade -yqq
  if [[ ! -x $(command -v docker) ]] && [[ ! -x $(command -v docker-compose) ]];then clear && LOCATION=preinstall && selection;fi
  if [[ -x $(command -v docker) ]] && [[ -x $(command -v docker-compose) ]];then clear && headinterface;fi
done
}
selection() {
LOCATION=${LOCATION}
cd /opt/dockserver/${LOCATION} && $(command -v bash) install.sh
}
headinterface() {
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    🚀 DockServer
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    [ 1 ] DockServer - Traefik + Authelia
    [ 2 ] DockServer - Applications
    [ 3 ] DockServer - Google Service Key Builder
    [ 4 ] DockServer - Rclone Builder [ ALPHA ]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    [ EXIT or Z ] - Exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

  read -erp "↘️  Type Number and Press [ENTER]: " headsection </dev/tty
  case $headsection in
    1) clear && LOCATION=traefik && selection ;;
    2) clear && LOCATION=apps && selection ;;
    3) clear && LOCATION=gdsa && selection ;;
    4) clear && LOCATION=rclone && selection ;;
    Z|z|exit|EXIT|Exit|close) exit ;;
    *) clear && appstartup ;;
  esac
}
appstartup
#EOF
