#!/bin/bash

set -x

tree="if(myPlanetsTotalRatio<0.225)if(actualMyShipsRatio<0.194)if(myShipsLandedFlyingRatio<0.591)if(myShipsLandedFlyingRatio<0.571)if(actualMyShipsRatio<0.305)attackWealthestPlanet(0.063);else attackWeakestEnemyPlanet(0.957);else if(actualMyShipsRatio<0.027)attackWeakestEnemyPlanet(0.916);else attackNearestNeutralPlanet(0.188);else reinforceNearestPlanet(0.000);else attackNearestEnemyPlanet(1.000);else if(actualLandedFlyingRatio<0.027)attackNearestEnemyPlanet(0.063);else if(actualMyShipsRatio<0.228)if(actualMyShipsRatio<0.305)attackNearestEnemyPlanet(1.000);else attackNearestNeutralPlanet(0.916);else if(myShipsLandedFlyingRatio<0.802)if(myShipsLandedFlyingRatio<0.604)if(actualMyShipsRatio<0.305)attackBeneficiousEnemyPlanet(1.000);else attackWeakestEnemyPlanet(0.957);else attackNearestEnemyPlanet(1.000);else reinforceNearestPlanet(0.000);"

java -jar gpagent.jar " $tree " ;
