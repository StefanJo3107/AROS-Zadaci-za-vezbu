#!/bin/bash

if [ "$1" = "-a" ];
then
    #preusmerava ispis datuma i zadatka sa stdin-a na fajl beleske.txt
    echo -e "$(date +"%d.%m.%Y.") $2" >> beleske.txt;
fi

now=$(date +"Datum: %d.%m.%Y. Vreme: %T");
echo -e "Dobrodošli \n$now\n\nZadaci:";
#nalazi sve linije u kojima se pojavljuje današnji datum i ispisuje konzolu
grep $(date +"%d.%m.%Y.") beleske.txt;


