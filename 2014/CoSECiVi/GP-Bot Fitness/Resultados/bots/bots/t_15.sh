#!/bin/bash
tree="if(actualLandedFlyingRatio<0.976)attackNearestEnemyPlanet(1.000);else attackBeneficiousPlanet(0.000);"
java -jar gpagent.jar " $tree " ;