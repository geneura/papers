
fitness=${1}
j1=${2};
j2=${3};
mapa=${4};

#echo ${1} ${2} ${3};

java -jar PlayGame-1.2.jar 2> salida_${fitness} maps/map${mapa}.txt 10000 1000 log.txt "./bots/${fitness}_${j1}.sh" "./bots/${fitness}_${j2}.sh" > /dev/null;
tail -n 10 salida_${fitness} | perl analizaGanaPierde.pl ${fitness}_${j1} ${fitness}_${j2} ${mapa} >> resultados_$fitness;