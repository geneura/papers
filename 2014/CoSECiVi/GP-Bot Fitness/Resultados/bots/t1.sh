#!/bin/bash

set -x 

tree="if(myPlanetsEnemyRatio<0.311)reinforceNearestPlanet(0.483);else if(actualMyShipsRatio<0.454)if(actualMyShipsRatio<0.603)if(actualMyShipsRatio<0.454)if(actualMyShipsRatio<0.501)attackNearestEnemyPlanet(0.889);else if(actualMyShipsRatio<0.333)attackNearestEnemyPlanet(0.468);else attackBeneficiousPlanet(1.000);else if(actualMyShipsRatio<0.454)attackNearestEnemyPlanet(0.272);else if(myShipsEnemyRatio<0.454)attackNearestEnemyPlanet(0.344);else attackQuickNeutralPlanet(1.000);else if(actualMyShipsRatio<0.454)attackNearestEnemyPlanet(0.468);else reinforceBase(0.468);else attackBeneficiousPlanet(1.000);"

java -jar gpagent.jar " $tree " ;
