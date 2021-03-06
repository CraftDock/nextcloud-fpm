#!/usr/bin/env bash

# shellcheck disable=SC2015

# Nextcloud environnement variables
env_set "NEXTCLOUD_MAJOR"       "$(env_get "NEXTCLOUD_MAJOR")"
env_set "NEXTCLOUD_VERSION"     "$(env_get "NEXTCLOUD_VERSION")"
env_set "NEXTCLOUD_INSTALL_DIR" "$(env_get "NEXTCLOUD_INSTALL_DIR")"
env_set "NEXTCLOUD_DATA_DIR"    "$(env_get "NEXTCLOUD_DATA_DIR")"
env_set "NEXTCLOUD_CONFIG_DIR"  "$(env_get "NEXTCLOUD_CONFIG_DIR")"
env_set "NEXTCLOUD_WWW_DIR"     "$(env_get "NEXTCLOUD_WWW_DIR")"
env_set "NEXTCLOUD_LOG_DIR"     "$(env_get "NEXTCLOUD_LOG_DIR")"
env_set "NEXTCLOUD_USER"        "$(env_get "NEXTCLOUD_USER")"
env_set "NEXTCLOUD_GROUP"       "$(env_get "NEXTCLOUD_GROUP")"

# Variables to be used in nextcloud.conf
[ -n "$(env_get "PHP_FPM_PM")" ]                        && env_set "PHP_FPM_PM" "$(env_get "PHP_FPM_PM")" || true
[ -n "$(env_get "PHP_FPM_PM_CATCH_WORKERS_OUTPUT")" ]   && env_set "PHP_FPM_PM_CATCH_WORKERS_OUTPUT" "$(env_get "PHP_FPM_PM_CATCH_WORKERS_OUTPUT")" || true
[ -n "$(env_get "PHP_FPM_PM_CLEAR_ENV")" ]              && env_set "PHP_FPM_PM_CLEAR_ENV" "$(env_get "PHP_FPM_PM_CLEAR_ENV")" || true
[ -n "$(env_get "PHP_FPM_PM_MAX_CHILDREN")" ]           && env_set "PHP_FPM_PM_MAX_CHILDREN" "$(env_get "PHP_FPM_PM_MAX_CHILDREN")" || true
[ -n "$(env_get "PHP_FPM_PM_MAX_REQUEST")" ]            && env_set "PHP_FPM_PM_MAX_REQUEST" "$(env_get "PHP_FPM_PM_MAX_REQUEST")" || true
[ -n "$(env_get "PHP_FPM_PM_MAX_SPARE_SERVERS")" ]      && env_set "PHP_FPM_PM_MAX_SPARE_SERVERS" "$(env_get "PHP_FPM_PM_MAX_SPARE_SERVERS")" || true
[ -n "$(env_get "PHP_FPM_PM_MIN_SPARE_SERVERS")" ]      && env_set "PHP_FPM_PM_MIN_SPARE_SERVERS" "$(env_get "PHP_FPM_PM_MIN_SPARE_SERVERS")" || true
[ -n "$(env_get "PHP_FPM_PM_PROCESS_IDLE_TIMEOUT")" ]   && env_set "PHP_FPM_PM_PROCESS_IDLE_TIMEOUT" "$(env_get "PHP_FPM_PM_PROCESS_IDLE_TIMEOUT")" || true
[ -n "$(env_get "PHP_FPM_PM_START_SERVER")" ]           && env_set "PHP_FPM_PM_START_SERVER" "$(env_get "PHP_FPM_PM_START_SERVER")" || true

# Nextcloud database environnement variables
## Sqlite
[ -n "$(env_get "SQLITE_DATABASE")" ]           && env_set "SQLITE_DATABASE" "$(env_get "SQLITE_DATABASE")" || true
## MySql
[ -n "$(env_get "MYSQL_HOST")" ]                && env_set "MYSQL_HOST" "$(env_get "MYSQL_HOST")" || true
[ -n "$(env_get "MYSQL_DATABASE")" ]            && env_set "MYSQL_DATABASE" "$(env_get "MYSQL_DATABASE")" || true
[ -n "$(env_get "MYSQL_USER")" ]                && env_set "MYSQL_USER" "$(env_get "MYSQL_USER")" || true
[ -n "$(env_get "MYSQL_PASSWORD")" ]            && env_set "MYSQL_PASSWORD" "$(env_get "MYSQL_PASSWORD")" || true
# Postgres
[ -n "$(env_get "POSTGRES_HOST")" ]             && env_set "POSTGRES_HOST" "$(env_get "POSTGRES_HOST")" || true
[ -n "$(env_get "POSTGRES_DB")" ]               && env_set "POSTGRES_DB" "$(env_get "POSTGRES_DB")" || true
[ -n "$(env_get "POSTGRES_USER")" ]             && env_set "POSTGRES_USER" "$(env_get "POSTGRES_USER")" || true
[ -n "$(env_get "POSTGRES_PASSWORD")" ]         && env_set "POSTGRES_PASSWORD" "$(env_get "POSTGRES_PASSWORD")" || true
##
[ -n "$(env_get "NEXTCLOUD_TABLE_PREFIX")" ]    && env_set "NEXTCLOUD_TABLE_PREFIX" "$(env_get "NEXTCLOUD_TABLE_PREFIX")" || true
[ -n "$(env_get "NEXTCLOUD_ADMIN_USER")" ]      && env_set "NEXTCLOUD_ADMIN_USER" "$(env_get "NEXTCLOUD_ADMIN_USER")" || true
[ -n "$(env_get "NEXTCLOUD_ADMIN_PASSWORD")" ]  && env_set "NEXTCLOUD_ADMIN_PASSWORD" "$(env_get "NEXTCLOUD_ADMIN_PASSWORD")" || true
##
[ -n "$(env_get "CORE_MEMORY_LIMIT")" ]         && env_set "CORE_MEMORY_LIMIT" "$(env_get "CORE_MEMORY_LIMIT")" || true
