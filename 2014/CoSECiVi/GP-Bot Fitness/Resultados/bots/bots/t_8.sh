#!/bin/bash
tree="if(actualMyShipsRatio<1.000)if(actualMyShipsRatio<0.249)attackNearestEnemyPlanet(0.286);else attackNearestEnemyPlanet(1.000);else if(actualMyShipsRatio<0.007)attackNearestEnemyPlanet(0.576);else attackNearestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;