#!/bin/bash
tree="if(myShipsLandedFlyingRatio<0.645)if(myShipsEnemyRatio<0.332)if(myShipsEnemyRatio<0.688)doNothing(0.487);else doNothing(0.610);else if(myPlanetsEnemyRatio<0.694)attackEnemyBase(0.485);else attackNearestNeutralPlanet(0.182);else if(myShipsEnemyRatio<0.572)doNothing(0.472);else if(myPlanetsEnemyRatio<0.680)if(actualMyShipsRatio<0.618)if(myShipsEnemyRatio<0.562)doNothing(0.485);else if(actualMyShipsRatio<0.705)attackWealthestNeutralPlanet(0.846);else attackBase(0.624);else if(myShipsEnemyRatio<0.332)if(myShipsEnemyRatio<0.688)doNothing(0.487);else doNothing(0.610);else if(actualMyShipsRatio<0.705)attackWealthestNeutralPlanet(0.846);else attackBase(0.624);else if(myShipsEnemyRatio<0.572)doNothing(0.472);else if(myShipsEnemyRatio<0.463)doNothing(0.485);else if(actualMyShipsRatio<0.705)attackWealthestNeutralPlanet(0.846);else attackBase(0.624);"
java -jar gpagent.jar " $tree " ;