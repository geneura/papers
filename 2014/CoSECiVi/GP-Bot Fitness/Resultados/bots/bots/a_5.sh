#!/bin/bash
tree="if(myShipsLandedFlyingRatio<0.873)if(myShipsLandedFlyingRatio<0.336)doNothing(0.288);else doNothing(0.183);else if(myPlanetsTotalRatio<0.078)attackWealthestNeutralPlanet(0.655);else if(myShipsLandedFlyingRatio<0.572)attackQuickEnemyPlanet(0.190);else if(myPlanetsEnemyRatio<0.493)attackNearestEnemyPlanet(0.586);else doNothing(0.312);"
java -jar gpagent.jar " $tree " ;