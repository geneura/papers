#!/bin/bash
tree="if(myShipsEnemyRatio<0.032)reinforceNearestPlanet(0.659);else if(myPlanetsEnemyRatio<0.459)if(myShipsEnemyRatio<0.825)if(myPlanetsEnemyRatio<0.977)attackNearestPlanet(0.586);else if(myPlanetsEnemyRatio<0.977)attackNearestPlanet(0.348);else reinforceBase(0.390);else attackWealthestEnemyPlanet(0.416);else if(actualMyShipsRatio<0.397)reinforceNearestPlanet(0.659);else attackWeakestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;