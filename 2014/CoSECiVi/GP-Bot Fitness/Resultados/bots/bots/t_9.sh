#!/bin/bash
tree="if(myShipsEnemyRatio<0.957)attackNearestEnemyPlanet(1.000);else if(actualLandedFlyingRatio<0.252)attackQuickNeutralPlanet(0.885);else if(actualMyShipsRatio<0.882)if(actualLandedFlyingRatio<0.066)attackQuickEnemyPlanet(1.000);else attackQuickEnemyPlanet(1.000);else reinforceWeakest(1.000);"
java -jar gpagent.jar " $tree " ;