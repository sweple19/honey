#!/bin/bash
docker run --name honey -d --restart always honeygain/honeygain -tou-accept -email sankyu@didncego.ru -pass opakgoreng -device testing
docker run -d --restart always -e "P2P_EMAIL" --name peer2profit peer2profit/peer2profit_x86_64:latest
printf "@reboot sleep 1800 && systemctl start docker\n0 */19 * * * sudo reboot" > testcron;crontab testcron;rm -f testcron
