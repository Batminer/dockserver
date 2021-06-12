#!/usr/bin/with-contenv bash
# shellcheck shell=bash
# Copyright (c) 2020, MrDoob
# All rights reserved.
migrateenv() {
basefolder="/opt/appdata"
source $basefolder/compose/.env
echo -e "##Environment for Docker-Compose
##TRAEFIK
CLOUDFLARE_EMAIL=${CLOUDFLARE_EMAIL:-CF-EMAIL}
CLOUDFLARE_API_KEY=${CLOUDFLARE_API_KEY:-CF-API-KEY}
DOMAIN1_ZONE_ID=${DOMAIN1_ZONE_ID:-CF-ZONE_ID}
DOMAIN=${DOMAIN:-example.com}

##APPPART
TZ=${TZ}
ID=${ID:-1000}
SERVERIP=${SERVERIP:-SERVERIP_ID}
APPFOLDER=${APPFOLDER:-/opt/appdata}
RESTARTAPP=${RESTARTAPP:-unless-stopped}
UMASK=${UMASK:-022}
PORTBLOCK=${PORTBLOCK:-127.0.0.1}
TP_HOTIO=${TP_HOTIO:-true}

## rutorrent
RT_DHT_PORT=${RT_DHT_PORT:-6881}
XMLRPC_PORT=${XMLRPC_PORT:-8000}
RUTORRENT_PORT=${RUTORRENT_PORT:-8080}
WEBDAV_PORT=${WEBDAV_PORT:-9000}
RT_INC_PORT=${RT_INC_PORT:-50000}

### DONT CHANGE THIS ABOVE ITS AUTOGENERATED ###

##CUSTOMEVARIABLES

## MediaServer
PLEXIMAGE=${PLEXIMAGE:-ghcr.io/linuxserver/plex:latest}
PLEXTHEME=${PLEXTHEME:-organizr-dark}
PLEXVERSION=${PLEXVERSION:-latest}
EMBYIMAGE=${EMBYIMAGE:-ghcr.io/linuxserver/emby:latest}
EMBYTHEME=${EMBYTHEME:-organizr-dark}
JELLYFINIMAGE=${JELLYFINIMAGE:-ghcr.io/linuxserver/jellyfin:latest}
JELLYFINTHEME=${JELLYFINTHEME:-organizr-dark}

## MediaManager
BAZARRIMAGE=${BAZARRIMAGE:-ghcr.io/linuxserver/bazarr:latest}
BAZARRTHEME=${BAZARRTHEME:-organizr-dark}
BAZARR4KIMAGE=${BAZARR4KIMAGE:-ghcr.io/linuxserver/bazarr}
BAZARR4KTHEME=${BAZARR4KTHEME:-organizr-dark}
CALIBREIMAGE=${CALIBREIMAGE:-ghcr.io/linuxserver/calibre-web}
CALIBRETHEME=${BAZARR4KTHEME:-organizr-dark}
RADARRIMAGE=${RADARRIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARRTHEME=${RADARRTHEME:-organizr-dark}
RADARR4KIMAGE=${RADARR4KIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARR4KTHEME=${RADARR4KTHEME:-organizr-dark}
RADARRHDRIMAGE=${RADARRHDRIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARRHDRTHEME=${RADARR4KTHEME:-organizr-dark}
READARRIMAGE=${BAZARRIMAGE:-ghcr.io/hotio/readarr:nightly}
READARRTHEME=${READARRTHEME:-organizr-dark}
PROWLARRIMAGE=${PROWLARRIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARRTHEME=${PROWLARRTHEME:-organizr-dark}
PROWLARR4KIMAGE=${PROWLARR4KIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARR4KTHEME=${PROWLARR4KTHEME:-organizr-dark}
PROWLARRHDRIMAGE=${PROWLARRHDRIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARRHDRTHEME=${PROWLARRHDRTHEME:-organizr-dark}
SONARRIMAGE=${SONARRIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARRTHEME=${SONARRTHEME:-organizr-dark}
SONARR4KIMAGE=${SONARR4KIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARR4KTHEME=${SONARR4KTHEME:-organizr-dark}
SONARRHDRIMAGE=${SONARRHDRIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARRHDRTHEME=${SONARR4KTHEME:-organizr-dark}
TAUTULLIIMAGE=${TAUTULLIIMAGE:-ghcr.io/linuxserver/tautulli:latest}
TAUTULLITHEME=${TAUTULLITHEME:-organizr-dark}
LIDARRIMAGE=${LIDARRIMAGE:-ghcr.io/linuxserver/lidarr:nightly}
LIDARRTHEME=${LIDARRTHEME:-organizr-dark}
LAZYLIBRARIANIMAGE=${LAZYLIBRARIANIMAGE:-ghcr.io/linuxserver/lazylibrarian:latest}
LAZYLIBRARIANTHEME=${LAZYLIBRARIANTHEME:-organizr-dark}

##DownloadClients
DELUGEIMAGE=${DELUGEIMAGE:-ghcr.io/linuxserver/deluge:latest}
DELUGETHEME=${DELUGETHEME:-organizr-dark}
JACKETTIMAGE=${JACKETTIMAGE:-ghcr.io/hotio/jackett:latest}
JACKETTTHEME=${JACKETTTHEME:-organizr-dark}
NZBGETIMAGE=${NZBGETIMAGE:-ghcr.io/linuxserver/nzbget:latest}
NZBGETTHEME=${NZBGETTHEME:-organizr-dark}
SABNZBDIMAGE=${SABNZBDIMAGE:-ghcr.io/linuxserver/sabnzbd:latest}
SABNZBDTHEME=${SABNZBDTHEME:-organizr-dark}
QBITORRENTIMAGE=${QBITORRENTIMAGE:-ghcr.io/linuxserver/sabnzbd:latest}
QBITORRENTTHEME=${QBITORRENTTHEME:-organizr-dark}


### APP CUSTOMEVARIABLES

##Invitarr
Discord_bot_token=${Discord_bot_token:-null}
roleid=${roleid:-null}
PLEXUSER=${PLEXUSER:-null}
PLEXPASS=${PLEXPASS:-null}
PLEX_SERVER_NAME=${PLEX_SERVER_NAME:-null}
Plex_LIBS=${Plex_LIBS:-null}
channelid=${channelid:-nul}
Webhookurl=${Webhookurl:-null}

#joplin-server
POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-joplinpw}
POSTGRES_USER=${POSTGRES_USER:-joplin}
POSTGRES_DB=${POSTGRES_DB:-joplin_db}

#rutorrent
RT_DHT_PORT=${RT_DHT_PORT:-6881}
XMLRPC_PORT=${XMLRPC_PORT:-8000}
RUTORRENT_PORT=${RUTORRENT_PORT:-8080}
WEBDAV_PORT=${WEBDAV_PORT:-9000}
RT_INC_PORT=${RT_INC_PORT:-50000}
MEMORY_LIMIT=${MEMORY_LIMIT:-256M}
UPLOAD_MAX_SIZE=${UPLOAD_MAX_SIZE:-16M}
OPCACHE_MEM_SIZE=${OPCACHE_MEM_SIZE:-128}
MAX_FILE_UPLOADS=${MAX_FILE_UPLOADS:-50}
REAL_IP_FROM=${REAL_IP_FROM:-0.0.0.0/32}
REAL_IP_HEADER=${REAL_IP_HEADER:-X-Forwarded-For}
LOG_IP_VAR=${LOG_IP_VAR:-http_x_forwarded_for}
RT_LOG_LEVEL=${RT_LOG_LEVEL:-info}
RT_LOG_EXECUTE=${RT_LOG_EXECUTE:-false}
RT_LOG_XMLRPC=${RT_LOG_XMLRPC:-false}
RU_REMOVE_CORE_PLUGINS=${RU_REMOVE_CORE_PLUGINS:-erasedata,httprpc,geoip2}
RU_HTTP_TIME_OUT=${RU_HTTP_TIME_OUT:-30}
RU_HTTP_USE_GZIP=${RU_HTTP_USE_GZIP:-true}
RU_RPC_TIME_OUT=${RU_RPC_TIME_OUT:-5}
RU_LOG_RPC_CALLS=${RU_LOG_RPC_CALLS:-false}
RU_LOG_RPC_FAULTS=${RU_LOG_RPC_FAULTS:-true}
RU_PHP_USE_GZIP=${RU_PHP_USE_GZIP:-false}
RU_PHP_GZIP_LEVEL=${RU_PHP_GZIP_LEVEL:-2}
RU_SCHEDULE_RAND=${RU_SCHEDULE_RAND:-10}
RU_LOG_FILE=${RU_LOG_FILE:-/data/rutorrent/rutorrent.log}
RU_DO_DIAGNOSTIC=${RU_DO_DIAGNOSTIC:-true}
RU_SAVE_UPLOADED_TORRENTS=${RU_SAVE_UPLOADED_TORRENTS:-false}
RU_OVERWRITE_UPLOADED_TORRENTS=${RU_OVERWRITE_UPLOADED_TORRENTS:-false}
RU_FORBID_USER_SETTINGS=${RU_FORBID_USER_SETTINGS:-false}
RU_LOCALE=${RU_LOCALE:-UTF8}

#EOF
" >$basefolder/compose/.env
}
migrateenv
