#!/bin/bash
tree="if(actualMyShipsRatio<0.120)reinforceWeakest(0.182);else if(myPlanetsTotalRatio<0.464)if(myPlanetsTotalRatio<0.590)attackNearestEnemyPlanet(1.000);else attackNearestEnemyPlanet(1.000);else if(myPlanetsEnemyRatio<1.000)attackBeneficiousEnemyPlanet(0.107);else doNothing(0.225);"
java -jar gpagent.jar " $tree " ;