#!/bin/bash

for i in {10000..1..-1}
do
    tar -xvf "number$i.tar";
    #briše se ekstraktovana arhiva pošto zbirna veličina svih ovih arhiva iznosi nekoliko stotina GB, s obzirom da je veličina početne arhive 100MB
    rm "number$i.tar";
done

#dodato pošto nisu postojale permisije za izvršavanje skripte
sudo chmod 777 number.sh;
./number.sh;