"Safe Skies" by Brent Scott

When play begins: Say "Intro message here"

[ROOMS]

Economy is a room. It is south of First_Class_Curtain. "Boring, cramped, uncomfortable economy section filled with crying babys. There is a single aisle with sets of three seats on either side. First Class is to the north, seperated by a curtain."

Seat 34F is a container. It is in Economy. 
	Understand "Get out of chair" as Exiting. 
	Understand "Get up from seat" as Exiting. 
[As a part of 2nd puzzle, player will start in seat, will need to 'bribe' aise seat passenger with food to let player out]
	
Galley is a room. "The galley hosts a crampt airplane bathroom, storage carts, and ovens to warm mediocre airplane food. The Cockpit is to the north and First Class is to the south."

Cockpit is a room. It is north of Cockpit Door. "High Tech flight deck with screens, seats for the pilots, and just enough room for their bags"

First Class is a room. It is south of Galley. "A luxurious first class cabin with plush reclinig seats and pre-departure champagne flowing. The Galley is to the north and Economy is to the south"

Overhead Bin is a container. It is in First Class. 

	Instead of examining Overhead Bin, say "Storage bins for crew and passenger bags. Too bad you're about a foot too short to reach it"
	[Need to make bin non-moveable. Tried making it scenery, but it will no longer fucntion as a container.]
	[Overhead bin will be out of reach. Player will be able to use bin as step to get in to overhead bin]



[DOORS- Both of which are the puzzles in this game]

First_Class_Curtain is north of Economy and south of First Class. First_Class_Curtain is a door. [First_Class_Curtain is locked and lockable.] [Noted out to test first puzzle, which is cockpit door. Right now, curtain is unlocked and will open]

	[Instead of opening First_Class_Curtain: Say "TSA regulations require that passengers remain only in their ticketed cabin. You did not pay for first class."]

Cockpit Door is north of galley and south of Cockpit. Cockpit Door is a door. The Cockpit Door is locked and lockable. 
	
	[Cockpit Door pin-lock code below]

The description of Cockpit Door is "A solid matal door to protect the cockpit. Have you found the pin code?"
	After examining Cockpit Door:
		now the command prompt is "Please enter the 4 digit cockpit door pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the 4 digit cockpit door pin code. >":
	increment the turn count;
	if the player's command matches "1234": 
		now the Cockpit Door is unlocked;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, Door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the 4 digit cockpit door pin code. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.




[OBJECTS]

There is a Crash Axe. 
Instead of examining the Galley when the Crash Axe is off-stage:
    say "A crash axe is mounted to the wall in the galley. There are 1ft high catering bins on the floor";
    move the Crash Axe to the Galley.

[Player may find crash axe and use it to attempt to break cockpit door, however cockpit door will not take damage from axe and message will be something like "The door was built to withstand blows from the axe. The door doesn't open. The keypad still flashes a yellow light"]

There is a Catering Bin. 
Instead of examining the Galley when the Catering Bin is off-stage:
    say "A crash axe is mounted to the wall in the galley. There are 1ft high galley bins on the floor";
    move the Catering Bin to the Galley.
[Player will be able to use bin as step to get in to overhead bin]

Flight Attendant's Bag is a container in Overhead Bin. It is closed and openable. 

Paperwork is a thing in Flight Attendant's Bag. The description of it is "--Message that gives door code through some clever way, like a pattern or flight number-- (code is 1234 right now)" 

