---
layout: post
title: Standard Risk vs. Italian Risk (or Why Math is Difficult)
---

![]({{site.url}}/images/risk.png)

A few friends and I played a game of Risk recently, just for the hell of it, and it didn't take nearly as long as I'd thought it should, and it wasn't until I actually sat down with the rules that I figured out why.

Normally, in Risk, the attacker rolls (up to) three dice, representing his three attacking army men. The defender rolls only up to *two* dice, but wins ties, representing his less active but much hardier men.  This creates an advantage to the attacking army, who (particularly with larger armies) will win out the majority of the time.

However, the version we unwittingly played (referred to as Italian Risk) uses three defensive dice. This creates a large advantage to the defenders, who now win the majority of individual conflicts.

I did a little bit of programming, which felt good after a long summer, and got some simple numbers:

- Under standard rules, in any single battle where the attacker rolls all three dice and the defender rolls both dice, the attacker defeats two armies about 37% of the time, ties 34% of the time, and loses two armies 29% of the time. In other words, the attacker *does not lose* 71% of the time. That's huge.
- Under Italian rules, in any single battle where both sides roll all three dice, the attacker defeats three armies about 14% of the time, defeats two armies 21% of the time, loses two armies 26% of the time, and loses all three armies 38% of the time. (I know that equals 99; rounding errors.) In other words, the attacker comes out on top 35% of the time (using nonrounded percentages). That's tiny.

Unfortunately, these percentages don't plug very well into probable-win scenarios. Partially because it's late and partially because working with strings of complicated probabilities is confusing, I can't work out the math that should go into this. Still, though, knowing the 71% and the 35% numbers are neat -- attacking with equal numbers in standard Risk will only leave you unable to conquer the enemy rarely, where attacking with equal numbers in Italian Risk is a risky proposition.

If I ever a) sit down and figure out the math or b) consult someone smarter than I, then I will record the full probabilities of winning battles in Italian Risk, which is not documented anywhere that I can see, where standard Risk *is* (but could still use a rework). Until then, I'll just play defensively.
