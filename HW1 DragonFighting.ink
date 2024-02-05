VAR sword = false

You wake up in an arena. A giant crowd surrounds you on all sides, jeering at you. There is a large gate at the opposite end. You think you can hear a creature inside.
*   (weakness) Peer closer through the bars.
    The creature is enormous, with tough green scales. Attacks against armor like this will probably be useless. But there seems to be a weak point where a scale is missing...
*   Look for a weapon to equip yourself with.
    ~ sword = true
    There's a sword forgotten on the ground nearby. You pick it up and brandish it towards the caged monster.
*   (screamed) Scream.
    You let out a guttural scream! The audience cheers louder for your demise! However, the noise seems to deter the monster, who backs away from the cage bars slightly.

- The gate starts to lift. It's time to fight the creature inside! It stomps out into the arena. It's a full sized dragon!
*   {sword} Stab at the air to deter his attack.
    The dragon breathes fire in response. You duck just in time, although some hair gets singed off. You wave the sword around wildly.
*   {screamed} Make more noise to distract the dragon.
    You scream for your life again. The dragon seems confused by the noise. He also thinks you're sort of a wuss. He keeps his distance, but seems to be preparing to strike.
*   {!screamed} Shout at the dragon. 
    The dragon seems confused by the noise. He keeps his distance, but seems to be preparing to strike.
*   {weakness} Look for a weapon to exploit the weakness in the armor.
    ~ sword = true
    You see a sword nearby on the ground, and quickly lunge for it. The dragon breathes fire at the place you were just standing, missing by a hair.
*   Run in circles.
    You start running in circles, and the dragon begins to chase after you. He seems to be having fun.
        **   Stop running
            You stop in place, and the dragon is upon you in an instant. He's very disappointed that you've ended his fun.
        **   Play dead
            You pretend to trip over a rock in the arena and flop to the floor. The dragon inspects you curiously, only to realize that you're completely fine! He feels betrayed by your trick. 
        **   Keep running for your life!
            You keep running! Unfortunately you don't have the best endurance, so you end up tripping in your exhaustion. The dragon accidentally crushes you under his foot. But he feels bad about it. ->END
    
- You've only made the dragon angrier!
*   {weakness && sword} Hit the weak spot with the sword. 
    You killed the dragon! The crowd seems a bit disappointed with the lack of spectacle, but at least you're not dead! ->END
*   {sword} Aim for the dragon's heart.
    You charge and try to drive the sword into the dragon's heart, but his armor is way too tough. The sword bounces off the dragon's chest easily. He looks unimpressed.
*   {sword} Drop the sword and hold your hands up.
    ~ sword = false
    The dragon considers this peace offering, but doesn't seem satisfied.
        ** Bow to the dragon.
            The dragon sees your bowing as an act of fealty, and decides to let you live as its servant. At least you're still alive! ->END
        ** Belittle the dragon.
            The dragon doesn't speak your language, but he can still tell you're being a jerk. He decides to gobble you whole. ->END
        ** Do jazz hands.
            The dragon does a little dance back. He thinks you're pretty cool. You decide to be friends! ->END
        ** Pick the sword back up and fight it.
            You scramble to grab your sword again, but as you bend down the dragon swipes angrily, knocking the sword out of your hand.
*   Dance a jig.
    The dragon is amused by your display, and pauses his attack.
*   SCREEEAAAMMM!
    You let out the loudest scream you can conjure. The dragon is tired of your antics and gobbles you up whole. ->END
    
- This seems like your last chance to escape the dragon. The audience is cheering for your death!
*   {weakness && sword} Hit the weak spot in his armor with the sword. 
    You killed the dragon! The crowd seems a bit disappointed with the lack of spectacle, but at least you're not dead! ->END
*   Beg the dragon not to eat you.
    You fall to your knees and beg for the dragon not to eat you! He thinks you're a total coward and gobbles you up whole for your spinelessness. ->END
*   Hide in the cage where the dragon was kept.
    You sprint for the cage where the dragon was being kept and discover a crevice in the wall. The dragon couldn't fit through, but maybe you can!
        **  Squeeze through the wall.
            False alarm... this crevice is smaller than it looks. You get stuck in the stone. The dragon finds you and immolates you with a fireball. ->END
        **  {!sword} Inspect the crevice to see if you fit.
            It's almost big enough, but there's a high chance you'll get stuck in there. Maybe if you had something to create a larger opening, but there's no time to find anything now.
                *** Go headfirst.
                    You stick your head through the hole, but now you can't see the crevice, so you can't tell how you should twist to get the rest of the way through! The dragon finds you and immolates you with a fireball. ->END
                *** Go feet-first.
                    You stick your feet in. Since you can still see the crevice, you're somehow able to twist back and forth until you've jammed your way through. You manage to escape! ->END
                
        **  {sword} Use the sword to make the opening larger.
            With the sword, you're able to displace some of the loose sediment and make an opening large enough to fit. You squeeze your way through and manage to escape! ->END
*   Climb up the arena walls.
        You manage to find an area where the stones jut out of the wall and start to scale it. Below, the dragon is trying to hit you with fireballs, but you're too quick! You manage to reach the lowest section of the audience.
            ** Jump onto the dragon's back from up high.
                You land painfully on the dragon's back, but you're alive! He rears up but can't throw you off.
                *** Pet him.
                    The petting seems to calm him down. You hop off his back and he looks apologetic for trying to immolate you. You decide to be friends! ->END
                *** {weakness} Kick him in a weak point of his armor.
                    You find a less scaly part of the head and kick it hard. It seems to knock the dragon out. You raise your fists in victory! ->END
                *** {sword} Drive the sword into his neck.
                    You plunge the sword into a less scaly part of the dragon's head, and he slumps down. You raise your fists in victory! ->END
                *** Yell in his ears. 
                    The dragon roars, disoriented by the noise. He backs up and slams you into the wall, crushing you. ->END
            ** Try to escape by jumping into the crowd.
                An angry member of the audience pushes you off the wall. You fall two stories to the ground and end up crushed. ->END
*   Surrender.
    The dragon is unsatisfied by your lack of valor, but doesn't attack. However, an angry member of the audience throws a chicken leg at you from the top of the stands. It slams into your head, knocking you out cold. How embarrassing. ->END

-> END
    
