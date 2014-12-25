---
layout: post
category: blog
title: What being a soccer goalie and being a hardware architect have in common
---
First, before you go any further, I implore you to read [this short, three-page essay](https://www.usenix.org/system/files/1309_14-17_mickens.pdf) about being a hardware architect (and working with computers in general). It's written by James Mickens, a Microsoft man, and is entirely ridiculous and hilarious on a base level, so it will be enjoyable to read.

Next, I want to draw your attention to a few specific parts. I'm first going to quote parts of the beginning of the essay, because it's the most important and has the most to do with what I'm trying to say.

>*I think that it used to be fun to be a hardware architect. Anything that you invented would be amazing, and the laws of physics were actively trying to help you succeed. Your friend would say, "I wish that we could predict branches more accurately," and you'd think, "maybe we can leverage three bits of state per branch to implement a simple saturating counter," and you'd laugh and declare that such a stupid scheme would never work, but then you'd test it and it would be 94% accurate... at some point, you realize that to implement aggressive out-of-order execution, you need to fit more transistors into the same die size, but then a material science guy pops out of a birthday cake and says YEAH WE CAN DO THAT, and by now, you're touring with Aerosmith and throwing Matisse paintings from hotel room windows…When you retire in 2003, your face is wrinkled from all of the smiles…you go out on top, the master of your domain.*

I started playing on a select soccer team when I was 11 or 12 or something, and for the first half of my first fall season, I didn't do very much. I hardly played, I had no foot skills, and I just couldn't contribute. I'd played a little bit of goalie in my rec leagues prior to this, but had never gotten the chance to try such a thing out in practice or a game. So I went up to my coach,  my over-six-foot-tall former-Kenyan-national-team coach, and asked if I could try being a goalie.

He looked all the way down to me and pretended to laugh. "Ha. Ha ha."

Then he hesitated. "We will see."

Come the end of practice, he put me in the net and lined the entire rest of the team up on some arbitrary line, maybe 15 or 20 yards away.  He then told me that if I saved 10 goals from the entire team, I would start in goal in Saturday's game.

I saved 12. And started in goal on Saturday.

I don't remember exactly how well I did when I first started playing goalie, but I learned from the best: my coach, Martin Mwita, was a goalie back in his day. So he knew. He knew how to teach, he knew how to inspire, he knew what a goalie should and should not be responsible for. He taught me to charge the ball *anytime* it was inside the goalie box and not being covered by another player, unlike almost every other 11- and 12-year-old goalie, who sat on the goal line and waited for a shot. Be bold. Be brave. Be aggressive.

My dad started calling me "Suicidal Sam." My team loved me. Other forwards feared me. Even when I was learning how to play, trying to come out of the goal with arms and legs spread in hopes of taking a bad dribble or a poor shot from a enemy, it was intimidating, and frustrating, and difficult to work around. Essentially, teams *had* to pass the ball while in the goal box to get around my charges, and my defense was solid enough that actually doing that and scoring quickly was hard.

I won't say we won every game, but we won plenty, and every game was close—our losses came from not enough offense more than not enough defense. Being a goalie was fun. It was easy, in some sense. It was vastly rewarding. Kids didn't know what to do against me. Every little thing I learned for myself or picked up from Martin or opposing forwards greatly accelerated my effectiveness. Week to week, I was getting noticeably better.

I was on that team, team Simba, until I was 14 or so. We won our league, beating out Gretna in the championship match, and Martin was ousted from his coaching job the following season because of horrible horrible politics. Those two, two-and-a-half years were some of the most fun times in my life. I found something I was good at, progressed quickly, and we won games with it.

I want to now draw your attention to the latter half of the essay, which is about the fictional main character's fictional son, John.

>*Regardless, John was changed forever, and when he grew up and became a hardware architect, he poured all of his genius into making transistors smaller and more efficient. For a while, John's efforts were rewarded with ever-faster CPUs, but at a certain point, the transistors became so small that they started to misbehave. They randomly switched states; they leaked voltage; they fell prey to the seductive whims of cosmic rays that, unlike the cosmic rays in comic books, did not turn you into a superhero, but instead made your transistors unreliable and shiftless...*

The entire essay makes better points than I can pull from these quotes; work with me.

When I started playing soccer in high school, I began on the junior varsity team, same as all the freshmen but one in my class. We practiced together and we played games and I played maybe half goalie, because the JV team had a goalie already. So I played a little midfield, which was okay because I was fast and could run for a while, but I still didn't have the foot skills to really compete. Our JV team wasn't very good, and we didn't win a lot of games.

In my sophomore year, almost the entire crop of freshmen below me were moved up to varsity. This was absurd. They were younger than us!

Okay, so, in all honesty, at least half of them *probably* deserved to be on varsity. The rest were just there. I won't lie and say that Steve Muller was the greatest, or the worst, coach in the world, because he wasn't, and he knows this. But, regardless, those things happened. Most important to me among all the freshmen that had moved up was a goalie, Trey, who was supposed to be pretty good, and the next-in-line after Joel, the senior goalie my sophomore year, graduated.

I'll fast-forward a bit and explain away my junior and senior years pretty quickly. I didn't play hardly any varsity my junior year (though I was now starting for JV), and only a little bit more my senior year (when I did not play JV). My one shining moment that redeemed me in the eyes of my coach (and probably my team) was [this single penalty stop](http://www.youtube.com/watch?v=OCUnrq4XeI4), which I only had to make because our first-string goalie got himself a yellow card immediately before the kick happened. It saved a post-season game, which felt really good. I'm proud of it.

But what I really want to drive home here is the fact that I did not play varsity goalie very much at all specifically because I was not as technically proficient as the starting goalie. What happened? Why was charging guys not working anymore? Where did "Suicidal Sam" go? *How* many points did we lose by?

In truth, being a goalie was never about that. Sure, it's good to have those skills, and being aggressive as a goalie is a valuable skill to have, and can catch guys off-guard in certain situations. I have no doubt in my mind about that.

But where my heyday was progress where my opponents could make none, my high school career was the progress of my opponents up, around, and over me. Forwards could pass to each other, or to  the midfield. Forwards could overload one side of the box, or spread the field such that I had to stay home, because my defense didn't have the manpower to pick up every single guy. Charging only worked in a small subset of situations, and positioning and diving and being thoroughly mindful of the players on the field became ten times more important.

And that's where I was lost. I got passed by, passed up because of my backwards mindset, my 1990s hardware architect mindset.

Sure, I like to think that I had the edge over the starting goalie in some areas, and I sure like to think that we were just "different" goalies and that I was getting a bad break, and I sure like to think that the decision to pick up the entire freshmen class and carry them with the big boys was part of a huge gamble on the future success of the team (which, funny enough, didn't work), and I sure like to think that Steve Muller just plain didn't like me, or had some other political reason to pick Trey over me.

But, honestly, the system advanced too fast, and passed me by. I still like soccer, and even as my brother is getting into it now, I don't know how to help him get better. I'm an hour away most days, but even if I wasn't, my only brand of soccer explodes off the launch pad in a fiery burst! then crashes into the ground some fifty feet ahead.

As a soccer player who had to figuratively deal with the problems in the essay, and as a computer science major who will be literally dealing with the problems in the essay, the world is difficult.
