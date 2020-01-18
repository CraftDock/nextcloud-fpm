#!/usr/bin/env bash

# Create folders
mkdir -p "$NEXTCLOUD_DATA_DIR"
mkdir -p "$NEXTCLOUD_CONFIG_DIR"
mkdir -p "$NEXTCLOUD_APPS_DIR"
mkdir -p "$NEXTCLOUD_THEMES_DIR"
mkdir -p "$NEXTCLOUD_WWW_DIR"
mkdir -p "$NEXTCLOUD_LOG_DIR"
mkdir -p "$NEXTCLOUD_TMP_DIR"

# Adjust owner per folder
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_DATA_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_CONFIG_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_APPS_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_THEMES_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_WWW_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_LOG_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP $NEXTCLOUD_TMP_DIR
chown -R $NEXTCLOUD_USER:$NEXTCLOUD_GROUP /run

# Adjust permissions per folder
chmod 770 "$NEXTCLOUD_DATA_DIR"
chmod 770 "$NEXTCLOUD_CONFIG_DIR"
chmod 770 "$NEXTCLOUD_APPS_DIR"
chmod 770 "$NEXTCLOUD_THEMES_DIR"
chmod 775 "$NEXTCLOUD_WWW_DIR"
chmod 775 "$NEXTCLOUD_LOG_DIR"
chmod 775 "$NEXTCLOUD_TMP_DIR"
chmod 775 /run