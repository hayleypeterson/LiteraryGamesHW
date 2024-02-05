VAR day = 1
VAR late = 0
VAR suspicious_employee = 0
VAR vix = 0
VAR called_moe = 0
VAR know_vix = 0
VAR herm = 0
VAR vix_visits = 0
VAR report = 0
VAR book = 0
Groundhog Day
Inky HW 2
* [Wake up.] -> bedroom


== bedroom ==
{day == 12: -> die }

You wake with a start and roll over. The alarm clock reads 6:10 AM, February 2nd -- you woke up 20 minutes before your alarm. {day > 3: How many times has it been? You think this is the {day}th time you've experienced this day. What if there's a limit on this? You need to figure it out, and fast!} {day > 6 and day < 11: You're starting to feel a weird tingling, like something's going wrong in your body.} {day > 10 : Your brain feels like mush today. You're starting to think that you might not have many more February 2nds left to live.}

+   Sleep in to the alarm.
    You roll over and close your eyes. Seemingly seconds later, the alarm comes blaring in your ears.
+   (woke_early) Get up early.
    You shut off the alarm and stretch. May as well start the morning now.
+   {day > 1} Wait, February 2nd?
    { day:
    - 2: 	Isn't it the 3rd? Damn thing must be broken. Or maybe you're just losing it after the day you had yesterday. 
    - else: No possible way. It's not February 2nd. It hasn't been February 2nd in DAYS. -> alarm_clock
    }
+   {know_vix or day > 4} Skip work. 
    No point in wasting the day at work. After all, it'll still be there tomorrow.
    ++ {know_vix} Go to Vix Industries. ->vix_industries
    ++ Do something fun. -> adventure

- You get dressed and head downstairs for breakfast.
+   Frozen waffle
    You stick an Eggo in the toaster. Solid breakfast!
+   (cereal) Cereal
    You pull your favorite cereal off the shelf and pour some milk in before digging in. UGH - yuck! The milk is definitely expired.
    {cereal > 1: 
        Hm. You should have known that - you've already used that milk.
        }
    You throw away the remaining cereal before heading out the door.
+   Homemade pancakes
    You whip up a delicious breakfast from scratch. Wow, you really are a good cook. 
    
    { woke_early:
	    Luckily you had time to spare.
    - else:
        Oops - now you're pushing it on time. You should head out now if you don't want your boss to kill you.
        ~ late = 1
    }
+ {day >1} Skip breakfast and head straight for the subway. -> subway
- Your car's not in the driveway. <>
    { day:
    - 1: 	
        Shoot. It's still in the shop. It should be ready by tomorrow, but today it's gonna have to be the subway. 
        -> subway
    - 2: 	It should be done at the shop by now. It's just down the street too - if you call now you should have time to drive to work. 
    - else: Well, if this stupid time loop is real, then supposedly the car is still in the shop. Maybe you should call anyway, just to make sure... 
    }
    + Phone Moe. ->moe_call
    + Just take the subway. 
        Not worth the effort. May as well just run and catch the subway. -> subway


->END

== alarm_clock ==
+ Examine the clock more closely.
    {vix: 
    Wait. What was it that the weird guy said yesterday? VI, then X... roman numerals? 6 and 10. 6:10? Could he be behind this? You need to find out now.
    ~ suspicious_employee = 1
    - else:
    Hm... 6:10. What an odd time to keep waking up to. Maybe there's some meaning in that, but it's lost on you.
    }
+ Smash the clock on the floor.
    UGH! Stupid clock. Can't tell you it's February 2nd now! 
- Distraught, you resolve to head straight to work. -> subway

->END

== moe_call ==
~ called_moe = 1
    You dial your mechanic's number and pick up your things, ready to leave.
    "You got Moe! What can I do you for?"
    +   {day >=2} "Hey, Moe. You got my car ready for me yet?"
        "Whoa-ho, buddy. I told you I couldn't get Lance in there until this afternoon. But I'll have it all shined up and ready by tomorrow morning, as promised!
        ++  "Man, come on. You said February 3rd!"
            "I did indeed! But today's the 2nd, buddy."
            +++ "It is?"
                "Man, this week has been long, hasn't it. Don't blame you for mixing your dates up! Anyways, we'll have your truck ready to go bright and early tomorrow, the 3rd, as discussed."
            +++ "Yesterday was the 2nd!"
                "Ha! You must be having a long week. Luckily today is Friday, right! Anyways, we'll have your truck ready to go bright and early tomorrow, the 3rd, as discussed."
            
        ++  "Oh. Uh, alright, my bad, I must have fudged the dates. I'll pick it up tomorrow."
            Right you will! We'll see you then. 
        -- "Right... Thanks Moe."
    +   {called_moe && day > 2} "Hey, Moe... you get a call from me yesterday?"
        "Hmm... can't say I did. Unless you talked to Lance. I told that kid to stop picking up my phone."
        ++ "No, I spoke to you."
            "You feeling all right, man? No, we didn't speak yesterday - not since you brought your car in on Monday. But anyways, now's not the best time, so we'll chat later, okay?"
                +++ "Right... thanks Moe."
        ++ "Nah, never mind. I'll catch you tomorrow."
        "Sure thing, pal. We'll have her shined up and ready for you then!"
    
   - Well, that sure solved nothing. Seems like car's not gonna be an option.
    +   Take the subway. -> subway
    
    // - Adding a day.
    // ~ day += 1
    // ->bedroom

-> END

== subway ==

You manage to catch the F train. Busy commuters are hurrying in alongside you, but you manage to slide your way into an empty seat. Luckily it's not a long commute.
+   Listen to music.
    You put in your headphones and play some music to drown out the noise.
+   {book < 4} Read a book.
~ book += 1
    { book:
    - 1: 	
    You pull a book out of your bag that you've been meaning to start. May as well.
    - 2: 
        You read from where you left off last time.
    - 3:
        Your book is really starting to pick up.
    - 4: 
        You finished the book. Well, at least you're getting something done in this loop.
    }
+   Do nothing.
    You stare out the window.
-   A shout pulls you out of your stupor. There's a disheveled looking man pushing his way down the train car with a crazy glint in his eye. "WHERE ARE YOU!" he bellows. {day == 2: It's that weird guy from yesterday.} {day > 2: It's the same guy again!}
+   Mind your business.
    Ugh. Subway people are so weird. You ignore the guy as he shakes curious onlookers by the shoulder and runs down the car.
+ {day > 1} "Sir, uh. Are you alright?"
    He grins. "There you are!" He's wearing an old faded company shirt. Looking closer, you can make out the logo: VIX! Find your future with us!
    ++ "What?"
        "Well, why else would you talk to me! You saw me already, huh?"
        +++ "Um, no."
            He frowns. "Then mind your business next time."
        +++ "I think so?"
            ~ vix = 1
            "Quite the predicament you're in," he nearly shouts. Some people awkwardly scoot away. "Well, a piece of advice, since you've noticed it already!"
            He taps on the logo of his shirt. "The old bosses! Vix! More like VI, then X. But they'll tell you all about that!"
        --- 
    ++ "Do you mind? The yelling is kind of much."
        "I wouldn't be so rude if I was you! I've got some valuable advice to give - and I guess you ain't gettin' it!"
    -- He tears off again, mumbling as he goes. You give a shrug to the curious looking people around you. 

+ {suspicious_employee} "HEY! You owe me answers!"
~ know_vix = 1
    People look weirdly at you, but you stomp up to the man, who looks like a lightbulb has just gone off in his head. "Yes, you! How many times have we spoken?
    ++ "What do you mean? Just tell me how to stop this!"
        "I thought I made it perfectly clear. Stop wasting your time and go to Vix! You may not have another chance!"
    ++ "Too many to count!"
        "Well then you should know what to do! Quit messing around and go there. To Vix! They're the root of all of this!"
    -- He skips away. What on earth is Vix Industries? You think you've heard the name before, but you can't remember what on earth they do. Except, apparently, put people into time loops?
    ++ Get off at the next stop, and find Vix Industries. ->vix_industries
    ++ Ignore the man, and continue on to work. 
        -> work
        

- Your stop finally arrives. Time for work.
    -> work


== work ==
~report = 0

{day== 2: This is so weird. Every clock and calendar seems to confirm that it's February 2nd again. That would mean that your boss doesn't remember yesterday?}
You get to work and find your office. Another day of boring work ahead.
+   Sit down to your computer.
    You kind of feel like there's something you're forgetting to do. No matter. It'll probably be fine. You spend the day taking a few sales calls and playing Tetris.
+ {day > 1} Do that sales report that your boss wanted.
    ~ report = 1

- Your boss strolls in, flinging your office door open. "Afternoon, champ! Where's that sales report you promised me!" 
    { report:
	    Luckily you remembered to do it.
    - else:
        Uh oh. You totally forgot.
    }
    + {report} "Right here, sir."
        "Ah, perfect. I mean, not perfect exactly, because when has your work ever been perfect! HA! Just joking, of course." He slaps you on the back a little too hard. 
        
    + {!report} "Right here, sir."
        Your boss leans over your desk. "Uh, where exactly?"
        ++ Give him an excuse.
            "I'm really sorry sir, but I haven't had the opportunity to finish it! I... 
            +++ ... forgot."
                "Well, there's really no excuse for that. Not in this company! You're on thin ice. And not to mention, VERY replaceable."
            +++ ... just found out my dog died."
                "Wow! Well I am really sorry to hear that. But personally, I wouldn't let that affect my work if I cared about keeping my job. Just to be clear!"
            +++ ... really don't care!"
                "WELL! If you really don't care so much, then you won't care to come back here tomorrow! You might as well pack up your things, because you're FIRED!" -> fired
                
                    Your boss looks affronted. "You need HELP!"
            +++ ... have been having computer problems all day!"
                He looks at your computer. "It seems to be running Tetris just fine. Well, I'll keep this short. You're FIRED!" ->fired
        ++ Give him an old sales report. 
            "Hm... numbers look a bit lower than I expected, but hey - not our problem! Good work."
        ++ Give him the finger.
            "You think that's funny, HUH? Well, YOU'RE FIRED!" -> fired
            
    
    + "Er - I am so sorry, but I forgot it."
        "Well, there's really no excuse for that. Not in this company! You're on thin ice. And not to mention, VERY replaceable."
- He leaves the office and you sigh in relief. At least this mediocre day hasn't ended in firing. You try to keep yourself busy for the rest of the day after that near-disaster. 

    ->after_work
    
    
== fired ==
+ "I understand."
+ {day > 3} "WELL I DON'T CARE!"
    You stand up. "LISTEN HERE! I'M IN A TIME LOOP ANYWAY! SO I GUESS I WILL SEE YOU TOMORROW! IF I EVEN CARE TO COME IN!
- You pack up your things and leave. What a wonderful end to that day. {day > 2: Well, it's not like you won't wake up un-fired tomorrow.}
->after_work 

== after_work ==
You leave the office late in the afternoon. Well, what now?

+ {know_vix} Find Vix Industries. -> vix_industries
+ Go home for the day.
- The day wears to an end. You head home to rest before tomorrow comes. {day >2: If that ever happens.}
    ~ day += 1
    ->bedroom


== vix_industries ==
    {vix_visits == 0:
    The internet has no record of a "Vix Industries" but you find the name in an old phone book. There's no information, except for a number. The line picks up almost immediately. The other end sounds staticky, but then comes an automated voice reading a message: 610 Zero St. Is that even a real address?
    }
    You call a taxi and tell him the address. He turns around to look at you with a grin.
    * "You?"
        It's the man from the subway. He chortles and starts driving. "Don't shoot the messenger! Anyways, I'm the only taxi driver around here who knows the way."
        ++ "Fine, just take me there."
            "Right-o!" 
        ++ "Let me out!"
            "Trust me, you want to speak with them."
        -- The rest of the trip is in silence. You head down a long, winding road.
    + {!herm} "Subway guy, get me to Vix now!"
        "You know I have a name? It's HERM!"
        ++ "Yeah, yeah. Step on it!"
        ++ "Okay, fine, Herm. I'll remember that. Just go!"
            ~herm = 1
    + {herm} "Herm, get me to Vix now!"
        "You're the boss!"
    - You roll up to a huge laboratory. When you walk in, everything looks sterile and white. There's a large clear elevator in the middle. 
    ~ vix_visits += 1
    "Welcome to Vix!" A man waves, hurrying in with a clipboard. "Have you been here before?"
    + "No."
        "Ah, then allow me to explain!" he pushes his glasses up. "You're probably here to escape your time loop. We get a few unexpected visitors like you now and again. Sometimes the experiments go wacky, you see, or an intern hits the wrong button - you get the gist."
        ++ "That's horrible. You guys have ruined my whole life by accident?"
            "Well, there really are no accidents when it comes to fate! But there is a way out you see."
        ++ "Yeah, seems standard."
            "Finally! Someone with some sense. But fortunately, it's possible to break free!"
        ++ "Why me?"
            "Well, it's best not to ask too many questions about fate. This was always meant to happen! But there is a way out of it, if you like."
        -- "Tell me how to break out!"
        "It's simple. Your time loop was a random event - and it'll take another random event to break you out! When you get into the elevator, click the button, and you have a chance to escape the loop. 
        ++ "A chance?!"
        -- "Heh. Unfortunately, the tech is pretty rudimentary still. You're only our 14th accidental time looper. But hey, it's getting better all the time! Anyways, worst case scenario, you just come back here next time, and try your luck again! Although - I do feel compelled to tell you that because of some entropy complications, we're legally required to remove you on day 12. Well! Good luck!"
        ++ "Remove?!"
            "Well we can't let the timeline get too frayed of course! But don't you worry. You've got plenty of time left! {day>10: Ahem. Well maybe you don't have the most time, but I'd still take a shot if I were you.}"
        ++ "Well, I guess it's worth a shot."
        -- "That's the spirit!"
    + "Yes." 
        { vix_visits:
        - 1: 	"Are you sure? My clipboard says otherwise, but, whatever you say!"
        - else: "Ah yes. Looks like this is visit number {vix_visits} for you! We expected you back - shame about last time."
    }
    - He gestures to the elevator. "Go on in!"
    You enter the elevator. There's only one button.
    + Push it.
    ~temp escape = RANDOM(0, 1)
    // - Escape value was {escape}.
    { escape:
        - 0: 	Rainbow colors begin swirling around you. You feel a sense of euphoria and peace wash over you. Then you open your eyes. Quickly you whip your head to look at your alarm clock. It's February 3rd. FEBRUARY 3RD! You escaped the loop!
        Status: alive
            -> stats
        - 1: 
            Your vision blurs and turns white. You can feel all your atoms dispersing and rearranging in agony! Then nothing. 
            ~ day += 1
            ->bedroom
    }
    
    
== adventure ==

~temp risk = RANDOM(0, 100)
+ Go skydiving.
    You decide to go skydiving today.
    // Risk value was {risk}.
    { risk > 30:
	    It's exhilarating! You have the most fun you've ever had!
    - else:
        You go to pull the cord on your parachute and nothing happens. You keep yanking at it, still nothing. "AAAAAAAAAAAAH!" You splat on the ground.
    }
+   Drive cross country. 
    You decide to go on a road trip today. You ask the neighbor to borrow their car, claiming that it's an emergency. 
    // Risk value was {risk}.
    { risk > 30:
	    It's a nice day! You see lots of wonderful sights.
    - else:
        Unfortunately, as you're turning onto the highway, a semi smacks into you and knocks you off the road. The car explodes immediately!
    }
+   Run around naked.
    Apparently this is somewhat illegal. You make it a few blocks before someone calls the police, and you spend the rest of the day in jail.
    - ~ day += 1
        ->bedroom

== die ==
This morning feels especially weird. You look to your left. The clock says 6:09. Could it be? Did the time loop stop somehow?
    Suddenly your vision turns white. You feel your bones start to shake. You explode in a fiery blast!
    Status: dead 
    -> stats


==stats==
Days looped: {day}
Visits to Vix: {vix_visits}


->END