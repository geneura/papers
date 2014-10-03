#!/bin/bash
tree="if(myPlanetsEnemyRatio<0.898)if(myShipsEnemyRatio<0.850)if(myPlanetsTotalRatio<1.000)attackNearestEnemyPlanet(1.000);else doNothing(0.506);else attackWeakestEnemyPlanet(0.861);else attackNearestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;