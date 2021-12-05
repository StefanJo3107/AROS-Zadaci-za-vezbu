#!/bin/bash

while true
do
    for i in txt docx odt pdf
    do
        mv ~/A/*.$i ~/B 2>> error.txt;
    done

    #zadatak je uradjen pomoću while petlje i sleep naredbe, ali je u fajlu crontab.txt data i cron naredba koja radi istu stvar
    sleep 30m
done