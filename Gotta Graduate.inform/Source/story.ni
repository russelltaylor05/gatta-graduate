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

[items]
A key is a thing. Key is in Janitor's Closet. The description of key is "Borrowed from the Janitor's Closet. Perhaps it has access to a particular room in building 14.". 
[The key unlocks Game Design Lab.]

[actions]

[Text instantials]
To say Opening text: say "Your homework is due. Finish your assignment or else you will drop of out Cal Poly!".

When play begins:
	say "[Opening text]".


[ --------------------------]
[        SOUTH WEST HALLWAY       ]
[ --------------------------]

[Descriptions]
Software Design Lab is a room with a description "A lab room lined with computers with a projector and table at the center. North is a doorway leading to the hall.".
Game Design Lab is a room with a description "The Game Design Lab is filled computers and with a projector and table at the center.".

Hallway 1 is a room with the description "To the west there is a staircase, but you have no need to go downstairs. To the north is a door leading outside. Continue East down the Hallway". 
Hallway 2 is a room with the description "Continue East down the Hallway or south into the Game Design Lab". 
Hallway 3 is a room with the description "Continue East down the Hallway". 
Hallway 4 is a room with the description "Continue North to the South Faculty Offices or east down the hallway.". 

[Doors]
Door1 is a closed, unlocked door. 
Door2 is a closed, unlocked door. 

[Directions]
Door1 is north of the Software Design Lab.
Door2 is north of the Game Design Lab. 
Hallway 1 is north of Door1.
Hallway 2 is east of the Hallway 1 and north of Door2.
Hallway 3 is east of the Hallway 2.
Hallway 4 is east of the Hallway 3 and south of the SouthEast Corridor.



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

The 14-205 is a Faculty Room inside the Faculty Entrances1.
The 14-206 is a Faculty Room inside the Faculty Entrances1.
The 14-207 is a Faculty Room inside the Faculty Entrances1.
The 14-208 is a Faculty Room inside the Faculty Entrances1.
The 14-209 is a Faculty Room inside the Faculty Entrances1.
The 14-210 is a Faculty Room inside the Faculty Entrances1. The description of 14-210 is "gene fisher".
The 14-211 is a Faculty Room inside the Faculty Entrances1.

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
The backpack is in the South Faculty Atrium. It is wearable and openable. In the backpack is a solder pen and the nokia phone.  The backpack is closed.
An AA cell is a  battery.  it is in the backpack.
The description of the backpack is "Recon. A familiar Northface backpack. You know the ins and out of this packpack easily can find the contents within".



The rusted key is in Faculty Entrances1. The description is "Engraved into the scratched and heavily used key is '14-21...'".
The South Faculty key is in 14-205. "Engraved into the key is 'gate key'".

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