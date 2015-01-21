---
layout: post
title: Dissecting Pocket Battles
categories: blog
---

<img src="{{ site.url }}/images/pocket-battles.jpg" align="left" style="margin:0px 5px">

So Pocket Battles is this nifty little board game that's contained within a small box. It's a two-player strategy game: you set up your armies individually, deploy them on the battlefield, and pit them against each other by moving them around and rolling dice. It's fairly quick and pretty fun, and there are 4 boxes (with 2 armies apiece) which makes for a lot of mix-and-match battles.

Something that I really like doing with board games, and dice games in particular, is trying to crack them. What are the odds of xyz happening, what's the average performance? I've done this previously with [Six Cubes]({{ site.url }}/blog/bored-games/) and to a point with [Risk]({{ site.url }}/blog/standard-vs-italian-risk/) (and I've done a little not-talked-about work with Parcheesi and Yahtzee, which I'll have to talk about someday). Pocket Battles is a game full of variables and odds, and it was a challenge to come up with something I could work into something I could use.

In the future I'd like to put the algorithm I used on GitHub, because GitHub is a neat place and I hope that someone else on the internet can use my code, as I stole and rearranged it from the internet. For now I just want to briefly talk about what the algorithm can do, and a couple questions I had.

***How good can a charging unit get based on attack dice alone?*** The only special trait the algorithm really takes into account is +x Wounds, which apply extra wounds *only* if you land a hit, which doesn't affect hitchance obviously but makes your bottom line damage look a lot better. So what's the tradeoff between +wounds and just +targets?

Let's consider the Orcs, who can make a Unit [Bugbear + Standard Bearer + 2 Gnolls] with 4/4/5/6 targets, 4 dice on a charge, and +2 wounds; if you switch out one troop [Gnolls for Orcs], you get 3/4/4/5/6 targets but only +1 wound. How do these units compare? We'd like to look at the probability that we'll do ANY damage -- consistency is always good -- and we'd like to look at our most likely outcome as well as our last wound target before we fall below 50% likelihood, so we can try and guess whether our unit will kill an enemy unit.

[all percentages are rounded off, for those keeping score at home.]

The first unit, which has two Gnolls, has a 94% chance of dealing any damage at all (and the minimum is 3, so that's where the scale starts). The most likely outcome is 4 damage, with a 25% occurrence (though 5 damage has a 24% occurrence, so you have nearly a 50% chance of dealing 4 or 5 damage), and we will deal at LEAST 5 damage 52% of the time.

Those are some sweet numbers. Let's swap out a Gnoll for an Orc, which gives us another die target but removes a +1 wound, and try again.

This new unit, with an Orc, has a 99% chance of dealing any damage at all, the minimum being 2 here. The most likely outcome is 4 damage, with a 28% chance, followed by 5 damage, with a 25% chance, so more than 50% of all outcomes will deal 4 or 5 damage. We have a 72% chance of dealing at least 4 damage (before falling off to dealing at least 5 at 44%). What does this mean?

It means that the Orc unit is more consistent at dealing wounds at all, but the double-Gnoll unit deals more wounds when it hits. The difference between 99% and 94% doesn't feel large, but that difference only gets larger the fewer dice you have -- if, for example, you receive a wound and your Standard Bearer goes down (losing you one die), the double Gnoll unit now only hits 88% of the time vs. the Orc unit hitting 96% of the time.

***Does the Confederacy have any advantages over the Union in long-range weapons?*** As the first box I played with, I got a lot of experience with it, and it's interesting how unfair it can feel. The Napoleon Gun, a Union rifle, can shoot almost anywhere on the battlefield and can be paired with a Captain for 3 dice against targets of 4/5/6. Its counterpart, the Confederate Withworth, costs 1 more and has 5/6/6 targets (though still 3 dice when paired with a Lieutenant).

Seems like the Union gun would be much more consistent, and you'd be right: it deals at least 1 damage 88% of the time and at least 2 damage 50% of the time, where the Withworth only lands at least 1 hit 70% of the time and at least 2 48% of the time, both less than the Napoleon Gun. It's not until you to 3 and beyond that the Withworth picks up, but it's only a 20% chance of dealing 3 or more wounds. The important stat here is the first one -- you generally can't afford to have your backline miss.

The Confederates have another backline rifle, though: the Parrot Rifle, which has no Wide Arc trait but regains 4/5/6 targets and has +1 wound. What's its stats? You roll one less die (we're assuming paired with the Lieutenant again), so that's a first strike, but does this ruin it? Odds of landing a hit (at least 2 damage) are 75%. This is neat and all, but remember the Napoleon Gun basically splits this percentage between its 1 and 2 wound hits (88% and 50%; this is not an exact data point) and retains Wide Arc, which the Parrot Rifle could really use.

What if the Confederates get the first shot with the Ordnance Rifle (plus Lieutenant)? This has 4/5/6/6 targets, but no long-range trait, and thus is unlikely to see a lot of serious action, but we're bold and theoretical here. Still at a 75% hit rate, same as the Parrot Rifle. Indeed, the Ordnance Rifle is less effective than the Napoleon Gun at both 1 and 2-wound points, and is only slightly higher once you hit 3 wounds (14% vs. 13%). And it's on the front lines, getting destroyed.

What about Union's other guns? They're both 5/6 targeting, 4-dice-rolling frontline units (and thus vulnerable), but what if *they* go first? Odds of them landing at least 1 wound are 80%, and their 2-wound-or-more stat is only a percentage point lower at 41% than the Ordnance's 42%. Oh, and did I mention that *they don't even need the Captain to do this.* Truthfully, the Union's artillery outstrips the Confederacy in almost every way, unless you're particularly lucky with your rolls.

***So what about this algorithm?*** I'm hoping to scan the cards here soon and get some simple GUI yoinked up, so I (or you) don't have to type numbers in manually anymore. The only trait I want to add special support for is the Orcs' Blood Lust trait, which is interesting. Basically, this should be a tool to guide your army-building, based on percentages, though you can usually remember that, in general, targets add reliability, +wounds add high-end damage, and extra dice do a bit of both. Check back later for the algorithm itself, if I clean it up, and more pictures and talking.
