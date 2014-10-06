#!/bin/bash
tree="if(actualMyShipsRatio<0.335)if(myPlanetsEnemyRatio<0.787)if(myShipsEnemyRatio<0.787)attackNearestEnemyPlanet(0.270);else attackBeneficiousPlanet(0.343);else reinforceNearestPlanet(0.343);else attackNearestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;