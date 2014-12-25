---
layout: post
category: link
title: Problems with the randomizer in Tetris Worlds
---

From [this thread](http://tetrisconcept.net/forum/showthread.html?t=512) over on [tetrisconcept.net](http://tetrisconcept.net/forum/), and most importantly from [this page](http://tetrisconcept.net/forum/showthread.html?t=512&amp;page=10) onward for the casual observer.

To briefly sum up the discoveries: because of the incorrect usage of an OR operator in Tetris Worlds, a Game Boy implementation of the classic Tetris, the probabilities of certain pieces are *very* skewed away from the roughly 1/7 probability that ought to be guaranteed.

The T piece comes up 21% (more than a *fifth*) of the time, where the lowly L piece comes in at 9% (less than a *tenth*).

That's whack.
