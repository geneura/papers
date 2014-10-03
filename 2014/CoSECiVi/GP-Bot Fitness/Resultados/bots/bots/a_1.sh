#!/bin/bash
tree="if(myShipsEnemyRatio<0.661)doNothing(0.315);else if(myPlanetsEnemyRatio<0.000)attackBeneficiousPlanet(0.229);else if(myShipsEnemyRatio<0.065)if(myShipsLandedFlyingRatio<0.294)if(myShipsLandedFlyingRatio<0.048)attackNearestPlanet(0.304);else doNothing(0.331);else doNothing(0.548);else attackBeneficiousPlanet(0.229);"
java -jar gpagent.jar " $tree " ;