"Safe Skies" by Brent Scott

When play begins: 
    now left hand status line is "Map: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".
		
When play begins: Say "You are on a flight back home, when you learn that there are terrorists that have taken over the cockpit. Break in to the cockpit to restrain the terriorists before they fly the plane away to a far off land. Other passengers don't know about this, so be as discreet as possible in order to not freak them out."

Description of player is "You are a pilot traveling as a passenger on your way back home. You are in ordinary clothes, but the flight attendants know you, so you don't arouse too much suspicion from them."


[-----ROOMS/SCENERY/NOT PORTABLE OBJECTS-----]

Seat 34F is a room. "You are in seat 34F of the boring, cramped, uncomfortable economy section filled with crying babies. Next to you is a person in the aisle seat, blocking you from getting you out of your seat."

Economy is a room. It is south of First_Class_Curtain. "There is a single aisle with sets of three seats on either side. First Class is to the north, seperated by a curtain."
	
Galley is a room. Galley is north of First Class.  "The galley hosts a crampt airplane bathroom, storage carts, and ovens to warm mediocre airplane food. The Cockpit is to the north and First Class is to the south."

Cockpit is a room. It is north of Cockpit Door. "High Tech flight deck with screens, seats for the pilots, and just enough room for their bags"

First Class is a room. It is north of First_Class_Curtain. "A luxurious first class cabin with plush reclinig seats and pre-departure champagne flowing. The Galley is to the north and Economy is to the south"

	Overhead Bin is a undescribed container in First Class. It is not portable. 
		
Instead of opening Overhead Bin:
	if player is carrying Catering Bin:
		say "You step up on the catering bin you are carrying to reach and open the overhead bin. You find a suitcase that has a 'CREW' bag tag on it";
		now Overhead Bin is open;
	otherwise:
		say "You're about a foot too short to reach the overhead bin"
	
	[Overhead bin is out of reach. Player uses bin as step to get access to overhead bin]



[-----DOORS-----]

First_Class_Curtain is north of Economy. First_Class_Curtain is an undescribed door. The printed name of First_Class_Curtain is "First Class Curtain".

Cockpit Door is north of galley and south of Cockpit. Cockpit Door is a door. The Cockpit Door is locked and lockable. 
	
	[Cockpit Door pin-lock code below]

The description of Cockpit Door is "A solid matal door to protect the cockpit. Have you found the pin code?"
	After examining Cockpit Door:
		now the command prompt is "Please enter the 4 digit cockpit door pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the 4 digit cockpit door pin code. >":
	increment the turn count;
	if the player's command matches "4808": [<- code is flight number from envelope in Flight Attendant's Bag]
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




[-----OBJECTS-----]

Player is carrying Zip Ties. The description of Zip Ties is "Large heavy-gauge plastic ties, perfect for detaining terrorists."

Player is carrying TSA Compliant Key. The description of TSA Compliant Key is "Small plastic and metal key. About the right size for a luggage lock you think..." TSA Compliant Key unlocks Your Suitcase. 
	
	Understand "Key" as TSA Compliant Key. 

There is a Crash Axe. 
Instead of examining the Galley when the Crash Axe is off-stage:
    say "A crash axe is mounted to the wall in the galley. There are 1ft high catering bins on the floor";
    move the Crash Axe to the Galley.

[Instead of opening Cockpit Door with Crash Axe
	Say "This door is far too strong, and is designed to not be damaged by the crash axe."]
	
[^ Prevent player from breaking door with crash axe]

There is a Catering Bin. 
Instead of examining the Galley when the Catering Bin is off-stage:
    say "A crash axe is mounted to the wall in the galley. There are 1ft high galley bins on the floor";
    move the Catering Bin to the Galley.
[Player will be able to use bin as step to get in to overhead bin]

Flight Attendant's Bag is a container in Overhead Bin. It is closed and openable. 

f is a thing in Flight Attendant's Bag. The description of it is "The envelope is sealed shut, but is labeled 'FLIGHT NO. 4808'" 

Your Suitcase is a closed openable container in Seat 34F. It is locked and lockable. The description of it is "Typical black carry-on, in which you tried to stuff everything in order to avoid checked bag fees."

	Granola Bar is a thing in Your Suitcase. 
	Candy is a thing in Your Suitcase. 
	Shirt is a thing in Your Suitcase. 
	


[-----NPC-----]

Person in Aisle Seat is an male person in Seat 34F. The description of Person in Aisle Seat is "A grumpy middle aged man probably on his way to yet another work meeting out of town. He tried to order food an few minutes ago, but his credit card was declined."

Understand "person in the aisle seat" as Person in Aisle Seat. 
Understand "seatmate" as Person in Aisle Seat. 
Understand "person" as Person in Aisle Seat. 

Instead of giving Granola Bar to Person in Aisle Seat: say "The man thanks you and is in a better mood, he gets out of his seat and you move in to the aisle.";
remove Granola Bar from play;
move player to Economy. 

Instead of giving Candy to Person in Aisle Seat: say "The man says no thanks, candy is hardly sustenance"


[-----Ending sequence-----]

An every turn rule:
	if the player is in Cockpit:
		say "You enter the cockpit and detain the terrorists using the Zip Ties you are carrying. You find the two pilots handcuffed in the corner of the cockpit and free them. The plane is able to land safely as scheduled!";
		end the story finally.

