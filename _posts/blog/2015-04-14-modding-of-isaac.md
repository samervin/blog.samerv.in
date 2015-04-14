---
layout: post
title: Modding the Binding of Isaac
category: blog
---

So I've been playing the hell out of Binding of Isaac: Rebirth.

![]({{ site.url }}/images/rebirth.jpg)

As someone who didn't latch on to the original game, the remake has basically solved all of the problems the original had: it doesn't lag, the items are much more balanced, and there is better online documentation for its mechanics (at least when I went looking).

The single problem I have with the game, as I have with many roguelikes, is this: I understand the appeal of items that have mysterious effects the first or second time you ever see them in the game. It encourages experimentation and generates "aha!" moments, which can be really powerful.

The trouble is, I've played the game enough that I've seen all the effects, and I want to be told what the hell's going on, so I can make informed decisions. In theory, I've seen and used (almost) all of the items, and I should know what they do. In practice, I'm human, and I forget which question mark item is which, or exactly what all the tarot cards do, or what have you. So I did a lot of checking the wiki while playing the game, which slows everything down and isn't fun.

I didn't realize this, but modding Rebirth is actually fairly straightforward. All the game's files are stored in a proprietary .a format, which has been broken (as it was meant to be). The developers simply wanted to slow down anyone looking to discover the secrets of the game before they were meant to know.

There exists a [program](http://svn.gib.me/builds/rebirth/) that will quickly unpack all the files: levels, graphics, text strings, everything. So I downloaded it and started poking around.

It's fascinating how much *stuff* is in these folders. Every character has multiple animation files for every possible skin color. Boss graphics are different for in-game and the character select screen (though not much). You can get the fonts that are used in the game.

All you need to do to mod Rebirth is place the correctly-named files in the correctly-named folders inside the resources directory in the Rebirth folder. [This link](https://www.reddit.com/r/themoddingofisaac/comments/2n7pmk/) has a lot of good resources for modding.

At roughly the same time, I found the [Modding of Isaac](http://moddingofisaac.com/) website, which is a really well-designed hub for Rebirth mods. There are a host of game-altering mods on here (which don't prevent achievements, if you're into cheating), but more importantly there are tons of example mods for you to download and try out.

So I set out to create my own mods! You can see them all on [my profile](http://moddingofisaac.com/user/1351/) on Modding of Isaac. I'm going to talk about them briefly here.

- [Explanatory Dice Room](http://moddingofisaac.com/mod/155/explanatorydiceroom) explains what the die rolls are in the dice rooms, because I was tired of looking them up.
- [Improved Item Descriptions](http://moddingofisaac.com/mod/158/improveditemdescriptions) changes the descriptions of like half the items in the game, because they were vague or incomplete and I was tired of looking them up.
- [Improved Card Descriptions](http://moddingofisaac.com/mod/157/improvedcarddescriptions) changes the descriptions of almost every card and rune in the game, because they're universally vague and I was tired of looking them up.
- [Devil Room Heart Icons](http://moddingofisaac.com/mod/154/devilroomhearticons) adds little hearts to all the Devil Room items that grant hearts, because this strongly influences whether I'll take an item in a devil deal, and I was tired of looking them up.
- [Game-Changing Item Icons](http://moddingofisaac.com/mod/156/game-changingitemicons) adds exclamation points to all the items that may drastically change your playstyle and have potential to ruin a run, because I hate accidentally grabbing stuff like Cursed Eye or Ipecac, and I was tired of looking them up.

Notice a pattern here? Everything is pro-ease-of-use. Playing Rebirth now is *way* more enjoyable, I really only rely on the wiki for stuff like distinguishing the different "page" items, and I can focus on the important things, like kicking Mom's ass.
