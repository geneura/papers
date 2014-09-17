#!/bin/bash
tree="if(myShipsLandedFlyingRatio<0.922)attackWeakestNeutralPlanet(0.064);else if(myPlanetsEnemyRatio<0.890)attackWeakestEnemyPlanet(0.995);else if(myPlanetsEnemyRatio<0.621)attackWeakestEnemyPlanet(0.995);else reinforceNearestPlanet(0.087);"
java -jar gpagent.jar " $tree " ;