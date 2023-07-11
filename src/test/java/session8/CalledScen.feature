Feature: 
Calling scenarios from some place else

@Sc1Tag
Scenario:
 Sc 1
 * print "Sc 1"
 * call read("CalledScen.feature@Sc2Tag")

@Sc2Tag 
Scenario:
 Sc 2
 * print "Sc 2"