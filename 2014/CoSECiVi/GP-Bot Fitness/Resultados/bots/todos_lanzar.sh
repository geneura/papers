
fitness1=${1}
fitness2=${2}
j1=${3};
j2=${4};
mapa=${5};

#echo ${fitness1} ${fitness2} ${j1} ${j2}

java -jar PlayGame-1.2.jar 2> salida_todos maps/map${mapa}.txt 10000 1000 log.txt "./bots/${fitness1}_${j1}.sh" "./bots/${fitness2}_${j2}.sh" > /dev/null;
tail -n 10 salida_todos | perl analizaGanaPierde.pl ${fitness1}_${j1} ${fitness2}_${j2} ${mapa} >> resultados_todos;