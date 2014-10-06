#!/bin/bash
tree="if(myPlanetsTotalRatio<0.836)attackNearestEnemyPlanet(1.000);else attackNearestEnemyPlanet(1.000);"
java -jar gpagent.jar " $tree " ;