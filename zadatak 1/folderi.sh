#!/bin/bash

declare -a g1s1=("Ekonomija" "Matematika1" "Menadzment" "OIKT" "Psihologija" "Engleski1");
declare -a g1s2=("Matematika2" "Programiranje1" "UIS" "OO" "Proizvodni_sistemi");
declare -a g2s1=("AROS" "Matematika3" "Verovatnoca" "Marketing" "Programiranje2" "Engleski2");
declare -a g2s2=("DMS" "FMIR" "MTR" "SPA" "Statistika");
declare -a g3s1=("EPOS" "MLJR" "OI1" "RMT" "TS");
declare -a g3s2=("Baze" "LINS" "MPP" "OI2" "POIS" "PJ");
declare -a g4s1=("PIS" "ITEH" "SISJ" "PS" "Inteligentni");
declare -a g4s2=("OK" "Mobilno_racunarstvo" "ZRS" "NJT" "Diplomski");

#generiše predmete za odabrani semestar i godinu
generate_subjects(){
	#linija dinamički generiše naziv niza koji nam je potreban i određuje njegovu dužinu
	eval "length=\${#g${1}s${2}[@]}"
	for (( i=0; i<${length}; i++ )); 
	do
		#linija dinamički generiše naziv niza koji nam je potreban i kreira odgovarajući direktorijum
		eval mkdir "\${g${1}s${2}[$i]}";
	done
}

#pravi foldere za godinu i semestre i poziva funkciju generate_subjects
make_folders(){
	mkdir $1.godina;
	cd $1.godina;
	mkdir S1 S2;

	cd S1;
	generate_subjects $1 1;
	cd ..;

	cd S2;
	generate_subjects $1 2;
	cd ..;
	cd ..;
}

parse_input(){
	if [ "$1" = "--all" ];
	then
		for i in {1..4}
		do
			make_folders $i; 
		done
	else
		make_folders $1
	fi
}

parse_input $1
