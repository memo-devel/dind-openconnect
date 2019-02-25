#!/bin/sh

echo -n -e "DUO_AUR\n${PASSWORD}\n${DUO_PWD}\n" | /usr/local/sbin/openconnect -v -u ${ZAP_USER} --protocol=anyconnect access2.ziprealty.com
