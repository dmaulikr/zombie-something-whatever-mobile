zombie-something-whatever
=========================

Some dumb zombie game or something for a hackfest.


#game play algorithm 

##ideas for stats

1. level (level + strength + dex/2)
2. strength (attack power)
3. intelligence (bonus to ready checks, can trick/outsmart zombies somehow?)
4. attentiveness/dex  (bonuses added to ready checks)

### Zombie level 1 stats:
str - 4
dex - 2
int - 0
On level up:
str +3
dex +2
int +1

### Human level 1 stats: 
str - 3
dex - 3
int - 3
luck - 1
On level up:
str +2
dex +2
int +2

### fighting mechanic
zombieTotalPow vs humanTotalPow 

zombieTotalPow = (zombieStr + zombieDex + zombieInt) + zombieLevel*(1-20 random roll)
humanTotalPow = (humanStr + humanDex + humanInt) + humanLevel*(1-20 random roll)

## Power stat modifiers
1. Zombie attacks human.
is human offguard?
if yes, -5 to humanTotalPow
is human well rested / nurished?
if yes, +5 to humanTotalPow

2. Human attacks zombie
does human have a weapon?
if yes, +5 to humanTotalPow
else -3 to humanTotalPow ()

## Attacking
1. zombieTotalPow >= humanTotalPow?
zombie wins
