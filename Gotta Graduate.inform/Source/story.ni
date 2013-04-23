"Gotta Graduate" by Robin Verweij, David O’Connor, Ryan Chan, Luke Plewa, Lauren Thurston, and Russell Taylor


[ -----------------------]
[               SETUP                     ]
[ -----------------------]

use no scoring. use full-length room descriptions.
The player is in Software Design Lab.

[The player is in Faculty Entrances1.]

[Pseudo Rooms]
Classroom is a kind of container. classroom is scenery, lockable, closed, enterable, fixed in place, openable.
Faculty Room is a kind of container. Faculty Room is scenery, closed, enterable, fixed in place, openable, lockable. A Faculty Room is usually locked.

[ -----------------------]
[       Items         ]
[ -----------------------]
A key is a thing. Key is in Janitor's Closet. The description of key is "Borrowed from the Janitor's Closet. Perhaps it has access to a particular room in building 14.". The key unlocks Game Design Door.

The charger is a thing in the Software Design Lab.

The phone is a supporter. The player carries the phone. The description of the phone is "Battery Life: [battery life]%.".

Battery life is a number variable. Battery life is 100.

app is a kind of thing. DDOS, packet spoofer, keylogger is an app. DDOS is in the Game Design Lab. keylogger is in the Software Design Lab. packet spoofer is in the HCI Lab.

[ -----------------------]
[     Actions         ]
[ -----------------------]
Launching it is an action applying to one thing.
Check launching it:
	if the noun is not an app, say "You can't do that." instead;
	if the noun is an app, now battery life is battery life minus 10;
	if the noun is DDOS, say "DDOS!";
	if the noun is keylogger, say "You're logging its keys!";
	if the player is not carrying the phone, say "You need your phone to do that.".
Understand "launch [something]" as launching it.

Downloading it is an action applying to one thing.
Check downloading it:
	if the noun is not an app, say "You can't do that." instead;
	if the noun is an app and the player is carrying the noun, say "Successfully reinstalled the app!";
	if the noun is an app and the player is not carrying the noun, say "Successfully downloaded the app!";
	if the noun is an app, now the player carries the noun;
	if the player is not carrying the phone, say "You need your phone to do that.".
Understand "download [something]" as downloading it.

Charging it is an action applying to one thing.
Check Charging it:
	if the noun is not the phone, say "You can only do that with your phone." instead;
	if the noun is the phone and the player is carrying the charger, say "You have finished charging." instead;
	if the noun is the phone, now battery life is 100;
	if the player is not carrying the charger, say "You need your charger to do that." instead.
Understand "charge [something]" as Charging it.

[ -----------------------]
[   Text instantials   ]
[ -----------------------]
To say Opening text: say "You are in the Software Design Lab at 9pm working on the last programming assignment of your last day of your last quarter at Cal Poly. In order to graduate you NEED to finish this program, or else you will get kicked out of college.".

When play begins:
	say "[Opening text]".
	
[-----------------------]
[-----          People         ---]
[-----------------------]
Dr Zoe Wood is a person. Zoe is in the Game Design Lab.
The description of Zoe Wood is "The graphics professor at Cal Poly. If you talk to her, she may be able to help you.".
Dr Gene Fisher is a person. Gene is in the Software Design Lab.
The description of Gene Fisher is "The software engineering professor at Cal Poly. If you talk to him, he may be able to help you.".

To say talk to instead: 
	say "(To communicate, TALK TO a character.) ".
Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.
	
Instead of talking to Gene Fisher:
	if the person is Gene, say "Dr. Fisher looks up from his laptop. 'There seems to be something with the servers.'[paragraph break]'I'm going to go see what is up. You can go too, but you shouldn't leave without taking your phone charger. I have heard of phone applications that professors have made to help debug the servers. Some professors may be on campus right now. If your phone isn't charged, you won't be able to use these applications.'[paragraph break]Dr. Fisher packs up and leaves the room.";
	if the person is Gene Fisher, remove Gene from play;
Instead of talking to Zoe Wood:
	if the person is Zoe Wood, say "Dr. Zoe Wood approaches you, 'Hello, student! If you have noticed, something is wrong with the servers. If you're willing to help me, I suggest we split up and investigate the building. The best place to look first is in the server room in the CSL.[paragraph break]I see you have a smart phone. I have prepared a phone application to attack the servers should anything go wrong. You can download the app, DDOS, onto your phone. I can't upload the app to the app store, because the servers might abuse it; however, I have left a version in the lab for you. I have heard of other professor who have created phone apps of their own in case of this emergency. Perhaps they are in the building and can help as well. Good luck, I'm going to get to the bottom of the mystery!'[paragraph break]Dr. Wood leaves the room.";
	if the person is Zoe Wood, remove Zoe from play.


[ --------------------------]
[        SOUTH WEST HALLWAY       ]
[ --------------------------]

[TODO]
[Steer player to talking to Fisher]
[Timing for statements]

[Story]
To say Intro text: say "[paragraph break]You are finishing up your program, checking to make sure everything compiles and that your name is on the source code. You go to SSH into Vogon, when you realize that something is wrong. You cannot access Vogon, so you shrug it off and try Unix1. After you realize that Unix1 is not working, you start to lightly perspire. You desperately want to go home to your bed and fluffy pillow and sleep. As you try Unix2 and fail to connect once again, you bang your head on the table. What to do?".

Instead of going to Hallway 1 when charger is not held:
	say "Maybe you should heed Fisher's suggestion and bring your phone charger.".

[Descriptions]
Software Design Lab is a room with a description "A lab room lined with computers with a projector and table at the center. North is a doorway leading to the hall.[if Hallway 1 is unvisited][Intro text][end if]".
Game Design Lab is a room with a description "The Game Design Lab is filled computers and with a projector and table at the center.".
Janitor's Closet is a room with a description "Perhaps there is something useful in here.".

Hallway 1 is a room with the description "To the west there is a staircase, but you have no need to go downstairs. To the north is a door leading outside. Continue East down the Hallway". 
Hallway 2 is a room with the description "Continue east down the Hallway or south into the Game Design Lab". 
Hallway 3 is a room with the description "Continue East down the Hallway or north into the Janitor's Closet.". 
Hallway 4 is a room with the description "Continue North to the South Faculty Offices or east down the hallway.". 

[Doors]
Door1 is a closed, unlocked door. 
Door2 is a closed, unlocked door. 
Door3 is a closed, unlocked door.

[Directions]
Door1 is north of the Software Design Lab.
Door2 is north of the Game Design Lab. 
Door3 is south of the Janitor's Closet. 
the printed name of Door1 is "Software Design Lab Door". 
the printed name of Door2 is "Game Design Lab Door".
the printed name of Door3 is "Janitor's Closet Door".
Hallway 1 is north of Door1.
Hallway 2 is east of the Hallway 1 and north of Door2.
Hallway 3 is east of the Hallway 2 and south of Door3.
Hallway 4 is east of the Hallway 3 and south of the SouthEast Corridor.
the printed name of Hallway1 is "East-West Hallway". the printed name of Hallway2 is "East-West Hallway". the printed name of Hallway3 is "East-West Hallway". the printed name of Hallway4 is "East-West Hallway".


[ -----------------------------------]
[         SOUTH EAST HALLWAY 	             ]
[ -----------------------------------]

Room 246 is a Room. The description is "There is a door to the south.".
Room 248 is a Room. The description is "There is a door to the south.".
Room 249 is a Room. The description is "There is a door to the south. You can move west.".
Room 250 is a Room. The description is "There is a door to the north. You can move west.".
Room 251 is a Room. The description is "There is a door to the north.".
Room 252 is a Room. The description is "There is a door to the north.".

Hallway 5 is a Room. The description is "Continue east down the hallway.". 
Hallway 6 is a Room. The description is "Continue east down the hallway.".
Hallway 7 is a Room. The description is "To the south is room 250. You can go east or west in the East Hall.".
Hallway 8 is a Room. The description is "To the north is room 249. To the south is room 250. You can go east or west down the East Hall.".
Hallway 9 is a Room. The description is "To the east is a staircase. To the south is a door leading out. To the north is Room 249 and to the south is Room 250. You can go west in the East Hall.".


[Directions]
Hallway 5 is east of Hallway 4.
Hallway 6 is east of Hallway 5.
Hallway 7 is east of Hallway 6.
Hallway 8 is east of Hallway 7.
Hallway 9 is east of Hallway 8.

[Doors]
Door 249 is a door. It is south of Room 249 and north of Hallway 9. 
Door 250 is a door. It is north of Room 250 and south of Hallway 9.
Door 248 is a door. It is south of Room 248 and north of Hallway 8.
Door 251 is a door. It is north of Room 251 and south of Hallway 8.
Door 246 is a door. It is south of Room 246 and north of Hallway 7.
Door 252 is a door. It is north of Room 252 and south of Hallway 7.



[ ---------------------------]
[        South Faculty Offices            ]
[ ---------------------------]


The SouthEast Corridor is a room. It has the description "You're in the Southern end of the East Outdoor Corridor. To the north is a fallen vending machine that is blocking your path. The archways to the east have been fenced off. Your only option is to head west toward the the South Faculty Offices."
The SouthWest Corridor is a room. It has the description "You're in the Northern end of the West Outdoor Corridor. The west is fenced off, but the corridor continues to the North. To the south is a locked door and to the west are the South Faculty Offices.".

The South Faculty Atrium is a room. It is west of the SouthEast Corridor and east of the SouthWest Corridor. It has the description "You're in the center of the southern faculty offices. To the north and south are enterances to the faculty offices."
The Faculty Entrances1 is a room. It is north of the South Faculty Atrium. It has the description "You see seven faculty offices:  14-205, 14-206, 14-207, 14-208, 14-209, 14-210, 14-211. You can enter each office and look around.[paragraph break]::Refer to the room by the last 3 digits. ie. 14-205 as 205::"

The Faculty Entrances2 is a room. It is south of the South Faculty Atrium. It has the description "You see seven faculty offices:  14-203, 14-204, 14-212, 14-213, 14-214, 14-215, 14-216. You can enter each office and look around.[paragraph break]::Refer to the room by the last 3 digits. ie. 14-205 as 205::"

The 14-205 is a Faculty Room inside the Faculty Entrances1. The pin unlocks it.
The 14-206 is a Faculty Room inside the Faculty Entrances1.
The 14-207 is a Faculty Room inside the Faculty Entrances1.
The 14-208 is a Faculty Room inside the Faculty Entrances1.
The 14-209 is a Faculty Room inside the Faculty Entrances1.
The 14-210 is a Faculty Room inside the Faculty Entrances1. The description of 14-210 is "gene fisher".
The 14-211 is a Faculty Room inside the Faculty Entrances1. 14-211 is open.

The 14-203 is a Faculty Room inside the Faculty Entrances2.
The 14-204 is a Faculty Room inside the Faculty Entrances2. 
The 14-212 is a Faculty Room inside the Faculty Entrances2.
The 14-213 is a Faculty Room inside the Faculty Entrances2. 
The 14-214 is a Faculty Room inside the Faculty Entrances2.
The 14-215 is a Faculty Room inside the Faculty Entrances2. The rusted key unlocks it. 
The 14-216 is a Faculty Room inside the Faculty Entrances2. 

A battery is a kind of thing.

A battery compartment is a kind of container. A battery compartment is usually closed and openable. One battery compartment is part of every device. Instead of inserting something which is not a battery into a battery compartment, say "Nothing will happen by inserting that into the slot since its not a battery".

Understand "turn on [device]" as switching on.
Understand "turn off [device]" as switching off.
Understand "put [something] in [container]" as inserting it into.
Understand "open [openable closed thing]" as opening.
Understand "close [openable open thing]" as closing. 

Instead of opening a device, try opening a random battery compartment which is part of the noun. Instead of closing a device, try closing a random battery compartment which is part of the noun. Instead of inserting a battery into a device, try inserting the noun into a random battery compartment which is part of the second noun.

Instead of switching on an empty device: 
	say "You need a power source!"
	
Definition: a device is empty: 
	if a battery compartment which is part of it contains a battery (called the power source): 
		no; 
	yes.

Does the player mean doing something other than searching to a battery compartment: it is unlikely.

Does the player mean inserting into a battery compartment: 
	if the noun is nothing: 
		it is very likely; 
	otherwise: 
		make no decision.
Does the player mean inserting a battery compartment into: it is very unlikely.
Does the player mean inserting something into a device: it is unlikely.
Does the player mean searching a battery compartment: it is very likely.


The nokia phone is a device. "NOKIA PORTABLE CELLULAR DEVCE".
The solder pen is a device. "Portable Soldering Pen".
The backpack is in the South Faculty Atrium.
The nokia phone is in 14-205.
The solder pen is in 14-204.

An AA cell is a  battery.  It is in 14-216. The description of the AA Cell is "An AA cell battery is always found when you really need an AAA".
The description of the backpack is "Recon. A familiar Northface backpack. You know the ins and out of this packpack. You easily can find the contents within".
The rusted key is in Faculty Entrances1. The description is "Engraved into the scratched and heavily used key is '14-20...'".
The pin is in 14-208. The description is "This pin might come in use to unlock a door".
The note is in 14-211. The description is "Busy,  if anyone reads this can you get my cell phone from 14-205?".
[The South Faculty key is in 14-205. "Engraved into the key is 'gate key'".]

The block giving rule is not listed in the check giving it to rules.
Foaad is a man in 14-213. He carries the North Atrium Key.

Instead of examining Foaad:
	say "[The noun] looks like he could use a solder pen. Better go find that"
	
Instead of talking to Foaad:
	say "I could really use a solder pen for my side project, I'm sure I can give you something for it".
	
before giving something to foaad:
	if noun is a solder pen:
		if noun is empty:
			say "This is useless with out a battery";
			stop the action;
		if noun is not empty:
			say "Ah this will help me alot. What did you say you were doing? anyways I have this 'A' I can give you, but how about this key? [paragraph break] ::you now carry the key foaad gave you::";
			now the player has the North Atrium Key;
	otherwise:
		say "I only want the solder pen";
		stop the action.
			
Need relates one person to various things. The verb to need (he needs, they need, he needed, it is needed, he is needing) implies the need relation.
Foaad needs the solder pen.	

Carry out smashing a container with something: 
	if noun is a faculty room:
		now the noun is open;
		say "You smash [noun] open!";


Check smashing it with: 
	if the noun is a person, say "why would you want to smash [noun]?!" instead; 
	if the second noun is not a nokia phone, say "[The second noun] does not have the properties of a nokia phone" instead;
	if the noun is not a faculty room, say "that is a waste of time to smash the [noun]".
		
smashing it with is an action applying to two things.

Understand "smash [something] with [something]" as smashing it with.
[Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.]
Understand "205" as 14-205.
Understand "206" as 14-206.
Understand "207" as 14-207.
Understand "208" as 14-208.
Understand "209" as 14-209.
Understand "210" as 14-210.
Understand "211" as 14-211.

Understand "203" as 14-203.
Understand "204" as 14-204.
Understand "212" as 14-212.
Understand "213" as 14-213.
Understand "214" as 14-214.
Understand "215" as 14-215.
Understand "216" as 14-216. 


[furnature]
The description of the desk is "Typical desk you would see in a teachers office. Messy with papers.".
A desk is a backdrop in 14-205. 
A desk is a backdrop in 14-206.
A desk is a backdrop in 14-207. 
A desk is a backdrop in 14-208. 
A desk is a backdrop in 14-209. 
A desk is a backdrop in 14-210. 
A desk is a backdrop in 14-211. 

A desk is a backdrop in 14-203. 
A desk is a backdrop in 14-204. 
A desk is a backdrop in 14-212. 
A desk is a backdrop in 14-213.
A desk is a backdrop in 14-214.
A desk is a backdrop in 14-215.
A desk is a backdrop in 14-216. 



[ --------------------------]
[    North Faculty Offices   ]
[ --------------------------]

The NorthWest Corridor is a room. It has the description "You're in the West Corridor. The west is still fenced off. To the north is another fallen vending machine. Weird... Seems your only option is to head east toward the North Faculty Offices". It is north of the SouthWest Corridor.
The NorthEast Corridor is a room. It has the description "You're in the Northern end of the Eastern Corridor. To the south is the first fallen vending machine you saw. The eastern archways are still fenced off. You can see that to the north the path is clear.". 

The North Faculty Atrium is a room. It is west of the NorthEast Corridor and east of the NorthWest Corridor. It has the description "You're in the center of the northern faculty offices. To the north and south are enterances to the faculty offices."
The Faculty Entrances3 is a room. It is north of the North Faculty Atrium. It has the description "You see five faculty offices:  14-219, 14-221, 14-222, 14-223, 14-226. You can enter each office and look around."
The Faculty Entrances4 is a room. It is south of the North Faculty Atrium. It has the description "You see seven faculty offices:  14-217, 14-218, 14-227, 14-228, 14-229, 14-230, 14-231. You can enter each office and look around."

The 14-219 is Faculty Room inside the Faculty Entrances3.
The 14-221 is Faculty Room inside the Faculty Entrances3.
The 14-222 is Faculty Room inside the Faculty Entrances3.
The 14-223 is Faculty Room inside the Faculty Entrances3.
The 14-226 is Faculty Room inside the Faculty Entrances3.

The 14-217 is Faculty Room inside the Faculty Entrances4.
The 14-218 is Faculty Room inside the Faculty Entrances4.
The 14-227 is Faculty Room inside the Faculty Entrances4.
The 14-228 is Faculty Room inside the Faculty Entrances4.
The 14-229 is Faculty Room inside the Faculty Entrances4.
The 14-230 is Faculty Room inside the Faculty Entrances4.
The 14-231 is Faculty Room inside the Faculty Entrances4.


[ ----------------------------]
[             CSL                                    ]
[ ----------------------------]

csl-239 is a room.
csl-238D is a room.
csl-hall-L is a room.
csl-238G is a room.
csl-236 is a room.
csl-hall-R is a room.
csl-234 is a room.
csl-233 is a room.
csl-238C is a room.
csl-238 is a room. "Here lives vogon".
csl-238B is a room.
csl-240 is a room.
csl-hall-B is a room.
csl-235D is a room.
csl-235C is a room.
csl-232-1 is a room.
csl-232-2 is a room.
csl-235-1 is a room with printed name "csl-235".
csl-235-2 is a room with printed name "csl-235".
csl-235-3 is a room with printed name "csl-235".
csl-235-4 is a room with printed name "csl-235".
csl-235-5 is a room with printed name "csl-235".
csl-235-6 is a room with printed name "csl-235".

csl-east-stairs is a room.
csl-west-stairs is a room.

north corridor-1 is a room.
north corridor-2 is a room.
north corridor-3 is a room.
north corridor-4 is a room.
north corridor-1 is east of north corridor -2.
north corridor-2 is east of north corridor-3.
north corridor-3 is east of north corridor-4.

csl-232-1 is south of csl-232-2.
csl-235-1 is east of csl-235-2 and south of csl-235-4.
csl-235-2 is east of csl-235-3 and south of csl-235-5.
csl-235-4 is east of csl-235-5.
csl-235-5 is east of csl-235-6.

csl-239-D is a door and scenery. it is north of the northeast corridor and south of csl-239. 
csl-hall-L-D-U is a door and a scenery. it is south of csl-hall-L and north of north corridor-1.
csl-hall-L-D-L is a door and a scenery. it is west of csl-238D and east of csl-hall-L.
csl-hall-L-D-D is a door and a scenery. it is north of csl-hall-L and south of csl-235-1.
csl-hall-L-D-R is a door and a scenery. it is west of csl-hall-L and east of csl-238G.
csl-hall-R-D-U is a door and a scenery. it is south of csl-hall-R and north of north corridor-2.
csl-hall-R-D-L is a door and a scenery. it is west of csl-236 and east of csl-hall-R.
csl-hall-R-D-D is a door and a scenery. it is north of csl-hall-R and south of csl-235-3.
csl-hall-R-D-R is a door and a scenery. it is west of csl-hall-R and east of csl-234.
csl-233-D is a door and a scenery. it is north of north corridor-3.
csl-238C-D-U is a door and a scenery. it is south of the northeast corridor.
csl-238C-D-R is a door and a scenery. it is west of csl-238C and east of csl-238.
csl-238-D is a door and a scenery. it is west of csl-238 and east of csl-235-1.
csl-238B-D is a door and a scenery. it is west of csl-238B and east of csl-235-4.
csl-240-D is a door and a scenery. it is southwest of csl-240 and northeast of csl-235-4.
csl-hall-B-U is a door and a scenery. it is north of csl-235-4 and  south of csl-hall-B.
csl-235D-D is a door and a scenery. it is north of csl-235-5 and south of csl-235D.
csl-235C-D is a door and a scenery. it is north of csl-235-6 and south of csl-235C.
csl-232-2-D-L is a door and a scenery. it is west of csl-235-6 and east of csl-232-2.
csl-232-1-D is a door and a scenery. it is west of csl-235-3 and east of csl-232-1.
csl-232-1-D-U is a door and a scenery. it is north of north corridor-4


[ ---------------------------------]
[           South Corridor                   ]
[ ---------------------------------]
[
14-243 is a room with description "There is a door to the south.".
14-244 is a room with description "There is a door to the south.".
14-245 is a room with description "There is a door to the east.".
14-246 is a room with description "There is a door to the south.".
14-253 is a room with description "There is a door to the north.".
14-254 is a room with description "There is a door to the north.".
14-254A is a room with description "There is a door to the north.".

South Hall 1 is a room with printed name "South Hall". 
The description of South Hall 1 is "There is more hallway to the east and west. North is a door to 14-246. South is a door to 14-253.".
It is west of South-East-Hall-5.

South Hall 2 is a room with printed name "South Hall".
The description of South Hall 2 is "There is more hallway to the east, north, and west. South is a door to 14-254A.".
It is west of South Hall 1 and south of South Hall 3.

South Hall 3 is a room with printed name "South Hall".
The description of South Hall 3 is "There is more hallway to the north and south.".

South Hall 4 is a room with printed name "South Hall".
The description of South Hall 4 is "There is more hallway to the south. To the west is a door to 14-245. North is a door to the south faculty offices.".
It is north of South Hall 3. [It is south of a south corridor]

South Hall 5 is a room with printed name "South Hall".
The description of South Hall 5 is "There is more hallway to the east and west. North is a door to 14-244. South is a door to 254.".
It is west of South Hall 2.

South Hall 6 is a room with printed name "South Hall".
The description of South Hall 6 is "There is more hallway to the east and west. North is a door to 14-243. South is the door to the Game Design Lab.".
It is west of South Hall 5. [north of the Game Design Lab.]

243-D is a door and a scenery. 
It is north of South Hall 6 and south of 14-243.

244-D is a door and a scenery.
It is north of South Hall 5 and south of 14-244.

245-D is a door and a scenery.
It is west of South Hall 4 and east of 14-245.

246-D is a door and a scenery.
It is north of South Hall 1 and south of 14-246.

253-D is a door and a scenery.
It is south of South Hall 1 and north of 14-253.

254-D is a door and a scenery.
It is  south of South Hall 5 and north of 14-254.

254A-D is a door and a scenery.
It is south of South Hall 2 and north of 14-254A.
]

[-------Enemy Battle--------]

[Player is in South Hall 5.]

Enemy is a kind of thing. An enemy can be dead. An enemy is usually not dead. An enemy has a number called enemy-health. The plural of enemy is enemies.

[Unix1 is a kind of enemy. Enemy-health of Unix1 is 5.
There is 1 Unix1 in 14-254. It is scenery.]

Unix1 is an enemy. Enemy-health of Unix1 is 5.
Unix1 Battle is a scene.

[Started substituting Room 252 for 14-254 for the time being]
Unix1 Battle begins when (the player is in Room 252 for the first time) or (the player is in Room 252 and the enemy is not dead).

[Unix1 Battle begins when the player is in 14-254 and the enemy is not dead.]

When Unix1 Battle begins:
	Move Unix1 to Room 252; 
	say "The door behind you closes and locks itself. It's a trap! [Paragraph break]";
	Now Door 252 is closed; [Close all the doors in room.]
	Now Door 252 is locked; [Lock all the doors in room.]
	say "Unix1 is on the computer. It looks pissed.".

When Unix1 Battle ends:
	Remove Unix1 from play; [Unlock all doors in room.]
	say "The screen fades to the usual terminal. [Paragraph break]";
	now Door 252 is unlocked;
	say "The door to the north makes a clicking noise. It seems to be unlocked.".

Unix1 Battle ends when (Unix1 is dead). [The enemy will always be present till it dies.]

[Every turn:
	Let playerLocation be the location of the player;
	if an enemy is in playerLocation and an enemy is not dead:
		say "I am here.";
	otherwise:
		say "What enemy.".]

Every turn during Unix1 Battle:
	Let playerLocation be the location of the player; [Create a condition that the player is in combat, possibly turn wifi on or off. Give a chance for the player to leave and charge phone and kick them out of battle till they recharge. Also regain enemy health when they are not battling.]
	Repeat with currentEnemy running through enemies in playerLocation:
		Let enemy-attack be a random number between 1 and 2;
		if enemy-attack is 1:
			say "[currentEnemy] uses open browser twice.[Paragraph break]";
			say "You lose a set amout of Battery life. (1)[Paragraph break]"; [Change this to say and decrease actual battery life.]
		else if enemy-attack is 2:
			say "[currentEnemy] uses Cntr^D on you.[Paragraph break]";
			say "You lose a set amount of Battery life. (2?)[Paragraph break]"; [Change this to say and decrease actual battery life.]
		[say "[currentEnemy]: Attack! [enemy-health of currentEnemy] [Paragraph break]";
		Decrease the Enemy-Health of Unix1 by 1;]
	If the Enemy-health of Unix1 is 0:
		Now Unix1 is dead.