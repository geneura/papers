#!/bin/bash
tree="if(myShipsEnemyRatio<0.575)attackNearestEnemyPlanet(1.000);else if(myShipsLandedFlyingRatio<0.267)doNothing(0.647);else if(actualMyShipsRatio<0.721)attackBeneficiousPlanet(0.536);else if(myPlanetsEnemyRatio<0.721)attackBeneficiousPlanet(0.483);else attackQuickNeutralPlanet(0.397);"
java -jar gpagent.jar " $tree " ;