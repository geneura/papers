#!/bin/bash
tree="if(myShipsEnemyRatio<0.526)if(actualMyShipsRatio<0.385)attackBeneficiousEnemyPlanet(0.394);else if(actualMyShipsRatio<0.385)attackBeneficiousEnemyPlanet(0.309);else attackWeakestEnemyPlanet(1.000);else if(myShipsEnemyRatio<0.275)attackNearestNeutralPlanet(0.185);else attackBeneficiousNeutralPlanet(0.465);"
java -jar gpagent.jar " $tree " ;