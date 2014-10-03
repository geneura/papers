#!/bin/bash
tree="if(myPlanetsTotalRatio<0.346)if(actualLandedFlyingRatio<1.000)attackNearestEnemyPlanet(1.000);else attackBeneficiousNeutralPlanet(0.213);else if(actualLandedFlyingRatio<1.000)attackQuickEnemyPlanet(0.147);else doNothing(1.000);"
java -jar gpagent.jar " $tree " ;