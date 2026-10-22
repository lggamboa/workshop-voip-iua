#!/bin/bash
set -e
cp config/pjsip.conf /etc/asterisk/pjsip.conf
cp config/extensions.conf /etc/asterisk/extensions.conf
asterisk -rx 'pjsip reload'
asterisk -rx 'dialplan reload'
asterisk -rx 'pjsip show endpoints'
