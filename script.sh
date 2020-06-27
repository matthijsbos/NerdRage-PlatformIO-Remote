#!/bin/bash
echo $PLATFORMIO_AUTH_TOKEN
platformio account login --username $PLATFORMIO_USERNAME --password $PLATFORMIO_PASSWORD
platformio remote agent start