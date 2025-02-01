/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR Shot creating = ()
VAR Playmaking = <>
VAR Defense = ++
VAR Sharpshooting = ""
VAR Athleticism = ||
VAR Stamina = $$

== function advance_time ==

~ time = 1-4 (Morning - Night)
{
 - time = 1: ~ return Morning
 - time = 2: ~ return Afternoon
 - time = 3: ~ return Dawn
 - time = 4: ~ return Night
 }
 ~ Fast forward to the future = {Future + 1}
On your journey to the NBA, you will face challenges.
== Weaknesses ==
~ {Injuries = -}
Injuries take away your basketball skills
-> Chicago

== Chicago ==
You currently live in south-west side of Chicago. You are broke and you hope to earn a better living. ~ {time = 1}
Choose a route to commit to.
- [Work at a full-time job] -> 9to5_job
- [Start trapping in your hood] -> Trap
- [Do a heist with your friends] -> Heist
- [Practice to make it to the NBA] -> NBA
You're undecided so you {Spin the lucky wheel: a wheel that picks a random choice} 
+ [Spin the wheel] -> NBA
Since the wheel picked the NBA route, get prepared to train to make it to the league.


== Store ==
Go to the store to buy athletic gear and equipment. You will need these items when working out at the gym.
~ {time = 2}
+ [Drive to store] ->store
+ [Buy athletic gear and equipment] -> store

== Gym ==
 Travel to your local gym and you'll find a basketball on the floor on the court.
 + [Drive to gym] -> Gym
 + [Enter a court] -> Basketball_court
 * [Pick up the basketball] -> Basketball_court
 
 Start practicing basketball fundamentals
 + = [Shoot fadeaway shots] -> Basketball_court
 ~ Shot creating = (fadeaway shots)
 + = [Shoot 3 pointers] 
 ~ Sharpshooting = "3 pointers"
 + = [Perform passing drills] -> Basketball_court
 ~ Playmaking = <passing drills>
 + = [Perform defensive slides] -> Basketball_court
 ~ Defense = +defensive drills+
 
Walk to the gym room with weight equipment.
In this room you will find dumbell weights. {Pick up dumbell weights}.Do a calf raise exercise to boost your athleticism. 
+ = [Go back] -> Gym
+ = [Do calf raise exercise] -> Gym
~ Athleticism = |calf raise|

Congratulations! You have finished your workout session. You now have boosted basketball abilities. 
After your gym session, go back to your home in Chicago and relax.
== Home ==
+ [Drive back home] -> Chicago
~ {time = 4}

As you enter your home, you will recieve mail from an anonymous person inviting you to play at a park basketball league located on the northside of Chicago. Save the mail in your drawer and go to sleep. Getting sleep increasing your stamina when playing basketball.
+ [Put the mail in drawer] -> Home
+ [Go to sleep] -> Home
~ Stamina = $Sleep$

You have now woke up. You decide to go to the basketball league mentioned in the mail. 
~ {time = 1} 

== Basketball_league ==
Travel to the Basketball league on the Northside of Chicago. When you get there, walk to court 5 where you'll play at.
+ [Drive to Northside] -> Northside_Chicago
+ [Walk to court 5] -> Court_5
~ {time = 2}
Start playing basketball against the other team on court 5. Use your new skills to your advantage and try to win the game. 
+ [Play the other team] -> Court_5
+ [Score a 30 point triple double] ->Court_5
+ [Win the game] -> Court_5

You have successfully won the basketball game. An anonymous NBA scout will come to you after the game and offer you the chance to try out for the Chicago Bulls team. Accept this offer.
+ [Accept offer] -> Court_5

== United_Center ==
A week later... ~ {future + 1}
You are now at the United Center facility practicing with the team. You suddently fall on your ankle the wrong way while performing a lay-up. You can't get up so the team doctor comes in to carry you off the court. 
~ {time = 1}
+ [Practice with team] -> United_Center
* [You suffer an ankle injury] -> United_Center
* [You are carried off the court] -> United_Center
~ {Injuries = -}
Suffering a injury significantly lowers your basketball abilities. You can't play basketball untill your healed. 

 == Hospital ==
You are now at the hospital. The Doctor offers you a pill that gives you the strength to play basketball again. Take the pill.
+ [Take the pill] -> Hospital

== United_Center ==
A few days later... ~ {future + 1}
~ {time = 4}
Sneak in to the Chicago Bulls team practice and convince the Coach to let you play despite your recent injury.
+ [Sneak into practice] -> United_Center
+ [Convince Coach] -> United_Center

The coach decided not to let you play. How do you react to this decision?
- [Go back home]
- [Play anyway]
- [Shoot baskets on another court]

Play anyway to prove that you can still hoop. Proceed to score all the points during team scrimmage and win the game.
* [Play with the team] -> United_Center
+ [Score all points] -> United_Center
+ [Win the game] -> United_Center

The Coach is now impressed but annoyed by your selfishness of your performance. After the game, Coach will sake your hand and tell you to leave the building. 

A year later... ~ {future + 1}
The Chicago Bulls are currently losing a lot of games. The Bull's Coach is at risk of losing his job so he decides to give a anonymous person a call.
~ {time = 3}

== Gym ==
You are currently at the gym practicing. Someone is calling you. Answer it.
+ [Pick up the phone] -> Gym

The General Manager of the Chicago Bulls has offered you a contract to play for the team. Congratulations on making it to the NBA!

One month later..
== NBA ==
~ {time = 4}
You are now about to play against the New York Knicks in your first NBA game. You have successfully completed your journey towards achieving a better life. Your hard work has paid off. 
+ [Play the New York Knicks] -> NBA
-> END









 





 
 
 