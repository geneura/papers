#!/bin/bash
tree="if(myPlanetsEnemyRatio<0.801)if(myShipsLandedFlyingRatio<0.660)if(myPlanetsEnemyRatio<0.429)reinforceNearestPlanet(0.213);else if(myShipsLandedFlyingRatio<0.660)attackQuickNeutralPlanet(0.018);else if(myShipsLandedFlyingRatio<0.508)reinforceBase(0.882);else attackRandomPlanet(0.964);else attackWealthestEnemyPlanet(0.415);else if(myShipsLandedFlyingRatio<0.287)reinforceWeakest(0.882);else reinforceBase(0.964);"
java -jar gpagent.jar " $tree " ;