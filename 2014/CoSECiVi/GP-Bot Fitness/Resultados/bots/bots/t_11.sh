#!/bin/bash
tree="if(myPlanetsTotalRatio<0.973)attackNearestEnemyPlanet(1.000);else attackBeneficiousPlanet(0.772);"
java -jar gpagent.jar " $tree " ;