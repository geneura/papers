#!/bin/bash
tree="if(myPlanetsEnemyRatio<0.916)if(actualMyShipsRatio<0.319)if(myPlanetsEnemyRatio<0.171)attackNearestEnemyPlanet(0.885);else attackNearestEnemyPlanet(0.832);else attackNearestEnemyPlanet(1.000);else if(myShipsLandedFlyingRatio<0.828)reinforceWeakest(0.176);else if(actualMyShipsRatio<0.171)attackNearestEnemyPlanet(0.885);else attackNearestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;