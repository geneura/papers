#!/bin/bash
tree="if(myPlanetsEnemyRatio<0.531)if(actualMyShipsRatio<0.891)if(actualMyShipsRatio<0.065)attackWeakestPlanet(0.149);else attackNearestEnemyPlanet(1.000);else if(myPlanetsEnemyRatio<0.470)attackQuickEnemyPlanet(0.573);else attackBeneficiousPlanet(0.149);else attackWealthestNeutralPlanet(0.019);"
java -jar gpagent.jar " $tree " ;