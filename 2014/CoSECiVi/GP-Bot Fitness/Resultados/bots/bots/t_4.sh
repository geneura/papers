#!/bin/bash
tree="if(actualMyShipsRatio<0.681)attackNearestEnemyPlanet(1.000);else if(myPlanetsEnemyRatio<0.217)doNothing(0.518);else attackBeneficiousEnemyPlanet(0.831);"
java -jar gpagent.jar " $tree " ;