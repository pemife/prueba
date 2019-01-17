#!/bin/sh

BASE_DIR=$(dirname $(readlink -f "$0"))
if [ "$1" != "test" ]; then
    psql -h localhost -U prueba -d prueba < $BASE_DIR/prueba.sql
fi
psql -h localhost -U prueba -d prueba_test < $BASE_DIR/prueba.sql
