1. Ant and Triangle Problem

Three ants are sitting at the three corners of an equilateral triangle. Each ant starts 
randomly picks a direction and starts to move along the edge of the triangle. 
What is the probability that none of the ants collide?

Puzzle Solution:
So let‚ us think this through. The ants can only avoid a collision if they all decide 
to move in the same direction (either clockwise or anti-clockwise). 
If the ants do not pick the same direction, there will definitely be a collision. 
Each ant has the option to either move clockwise or anti-clockwise. 
There is a one in two chance that an ant decides to pick a particular direction. 
Using simple probability calculations, we can determine the probability of no collision.

P(No collision) = 
P(All ants go in a clockwise direction) + P( All ants go in an anti-clockwise direction) 
= 0.5 * 0.5 * 0.5 + 0.5 * 0.5 * 0.5 = 0.25

2. Crossing the Bridge Puzzle

Puzzle: Four people need to cross a rickety bridge at night. 
Unfortunately, they have only one torch and the bridge is too dangerous to cross 
without one. The bridge is only strong enough to support two people at a time. 
Not all people take the same time to cross the bridge. 
Times for each person: 1 min, 2 mins, 7 mins and 10 mins. 
What is the shortest time needed for all four of them to cross the bridge?

Puzzle Solution:
It is 17 mins.
1 and 2 go first, then 1 comes back. Then 7 and 10 go and 2 comes back. 
Then 1 and 2 go again, it makes a total of 17 minutes.

3. Burning Rope Timer Puzzle

A man has two ropes of varying thickness (Those two ropes are not identical, 
they arent the same density nor the same length nor the same width). 
Each rope burns in 60 minutes. He actually wants to measure 45 mins. 
How can he measure 45 mins using only these two ropes.
He cant cut the one rope in half because the ropes are non-homogeneous 
and he cant be sure how long it will burn.

Puzzle Solution:
He will burn one of the rope at both the ends and the second rope at one end. 
After half an hour, the first one burns completely and at this point of time, 
he will burn the other end of the second rope so now it will take 15 mins more 
to completely burn. so total time is 30+15 i.e. 45mins.

4. Heaven or Hell Puzzle

You are standing before two doors. One of the path leads to heaven and the other 
one leads to hell. There are two guardians, one by each door. 
You know one of them always tells the truth and the other always lies, but you don’t 
know who is the honest one and who is the liar.

You can only ask one question to one of them in order to find the way to heaven. 
What is the question?


Puzzle Solution:
The question you should ask is “If I ask the other guard about which side leads to heaven,
 what would he answer?”. It should be fairly easy to see that irrespective of whom do you
ask this question, you will always get an answer which leads to hell. 
So you can chose the other path to continue your journey to heaven.

5. 10 Coins Puzzle

Problem: You are blindfolded and 10 coins are place in front of you on table. 
You are allowed to touch the coins, but can’t tell which way up they are by feel. 
You are told that there are 5 coins head up, and 5 coins tails up but not which ones 
are which. How do you make two piles of coins each with the same number of heads up? 
You can flip the coins any number of times.	

Solution:

Make 2 piles with equal number of coins. Now, flip all the coins in one of the pile.

How this will work? lets take an example.

So initially there are 5 heads, so suppose you divide it in 2 piles.

Case:

P1 : H H T T T
P2 : H H H T T

Now when P1 will be flipped
P1 : T T H H H

P1(Heads) = P2(Heads)

Another case:

P1 : H T T T T
P2 : H H H H T

Now when P1 will be flipped
P1 : H H H H T

P1(Heads) = P2(Heads)

6. King and Wine Bottles

Problem:
A bad king has a cellar of 1000 bottles of delightful and very expensive wine. 
A neighboring queen plots to kill the bad king and sends a servant to poison the wine. 
Fortunately (or say unfortunately) the bad king’s guards catch the servant after he has 
only poisoned one bottle. Alas, the guards don’t know which bottle but know that the poison
is so strong that even if diluted 100,000 times it would still kill the king. 
Furthermore, it takes one month to have an effect. The bad king decides he will get some
of the prisoners in his vast dungeons to drink the wine. Being a clever bad king he 
knows he needs to murder no more than 10 prisoners – believing he can fob off such a 
low death rate – and will still be able to drink the rest of the wine (999 bottles) at 
his anniversary party in 5 weeks time. Explain what is in mind of the king, 
how will he be able to do so ? (of course he has less then 1000 prisoners in his prisons)

Solution:

Think in terms of binary numbers. (now don’t read the solution, give a try).

Number the bottles 1 to 1000 and write the number in binary format.

bottle 1 = 0000000001 (10 digit binary)

bottle 2 = 0000000010

bottle 500 = 0111110100

bottle 1000 = 1111101000

Now take 10 prisoners and number them 1 to 10, now let prisoner 1 take a sip from every
 bottle that has a 1 in its least significant bit. Let prisoner 10 take a sip from every 
 bottle with a 1 in its most significant bit. etc.

prisoner = 10 9 8 7 6 5 4 3 2 1

bottle 924 = 1 1 1 0 0 1 1 1 0 0

For instance, bottle no. 924 would be sipped by 10,9,8,5,4 and 3. 
That way if bottle no. 924 was the poisoned one, only those prisoners would die.
After four weeks, line the prisoners up in their bit order and read each living prisoner
 as a 0 bit and each dead prisoner as a 1 bit. The number that you get is the bottle of 
 wine that was poisoned.
1000 is less than 1024 (2^10). If there were 1024 or more bottles of wine it would take 
more than 10 prisoners.

7. 3 Mislabeled Jars

Puzzle:

This problem is also called Jelly Beans problem. This is the most commonly asked interview puzzle.

You have 3 jars that are all mislabeled. One jar contains Apple, another contains Oranges and the third jar contains a mixture of both Apple and Oranges.

You are allowed to pick as many fruits as you want from each jar to fix the labels on the jars. What is the minimum number of fruits that you have to pick and from which jars to correctly label them?

Labels on jars are as follows:

Solution:

The important thing to note here is that all the three Jars are MISLABELED. Hence a jar labelled Apples can contain either only Oranges or Apples+Oranges, Similarly a jar labelled Apples & Oranges must contain either only Apples or only Oranges.
Step 1 : Take out a fruit from the jar mislabelled as Apples & Oranges, If it turns out to be an Orange then this jar must contain Oranges only.
Step 2 : Consider the Jar labelled as Apples, Since the Jar is mislabeled it cannot contain Apples and also the jar which contains oranges is already found. Hence we can conclude that this jar contains apples & Oranges .
you know the rest .

