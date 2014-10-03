#!/bin/bash
tree="if(myShipsEnemyRatio<0.814)attackNearestEnemyPlanet(1.000);else if(myPlanetsTotalRatio<0.437)if(myPlanetsEnemyRatio<0.102)attackQuickEnemyPlanet(0.860);else attackQuickEnemyPlanet(0.795);else if(myPlanetsEnemyRatio<0.579)attackWealthestNeutralPlanet(1.000);else attackWeakestEnemyPlanet(0.593);"
java -jar gpagent.jar " $tree " ;