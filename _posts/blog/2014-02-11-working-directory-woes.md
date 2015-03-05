---
layout: post
title: Current Working Directory woes
categories: blog
---

So, for a Spanish class of mine, we have to complete these "personalized projects" that show that we're interacting with the language. Since last semester, I've been gradually updating a small Java project, which randomly selects a known word and a known tense and tells you to conjugate it.

I had been hardcoding most of the data, which was unwieldy and generally awkward, so I separated it out into data files, compiled, and ran it. Worked great. I packaged the whole thing up, the jar and the data files, sent it to my classmates and my teacher, and called it a day.

For whatever reason, my professor couldn't run it on her computer, and without looking at it I couldn't diagnose it. She asked me to bring it in and show her on a laptop. No problem! Dropbox had already synced it to my netbook, so I brought it in and gave it a try.

Didn't work. Fuck. Why does this not work?

My main computer runs Windows 7. The netbook runs Ubuntu. Is this a filepath problem on Linux?

So I do a little research. Using "/" works in Java for directories on all three major OSes. So that's not it. Why can't it find the files? I do a little rearranging, try to pack the text files in the jar file itself (hint: this is really hard and I can't figure it out), try some more jar packing, try some more launch configurations.

Eventually I figure it out. Java understands very clearly the concept of the "current working directory." This is the location that every file access is taken relative to. Windows and the Eclipse program and Linux all handle this **very very differently** and that's frustrating.

If you double-click a jar file in the file explorer in Windows, it will set the current working directory to the location from which it was launched. This is smart! because it lets you place files in the same directory and know where they are at all times.

If you double-click a jar in Eclipse, it sets the current working directory to the Eclipse home directory. This is silly. The Eclipse home directory doesn't have anything in it that I want. Why is this a thing?

If you double-click a jar in Ubuntu, it sets the current working directory to the home directory, e.g. /home/sam. This is slightly understandable but still silly and annoying. Linux does not change the current working directory (apparently) unless you navigate there using the terminal: using the GUI is not enough. If you navigate to the jar file in Ubuntu and run it using command-line, it runs perfectly and sets the working directory appropriately, because, well, you've gone and changed it.

So, because Java specifically does NOT allow you to change the working directory (per [here](http://stackoverflow.com/questions/840190/changing-the-current-working-directory-in-java) and [here](http://bugs.java.com/bugdatabase/view_bug.do?bug_id=4045688)), and because there is NO easy (non-hacky) way to get the location from which you launched a jar file, and because I CANNOT for the life of me figure out how to properly pack the data files into the jar and access them normally (apparently File doesn't work, but some refactor of my code would perhaps), the workaround is to include a readme file, which describes all this in less detail and with less coarse language.

Hours of effort for a bug that ultimately plagued only myself, as I doubt that of the subset of people in my Spanish class that will use such a program (which is tiny), any of them will be running Linux. I have no idea if the same problem troubles Mac users. I suspect using the terminal to launch it will ensure correct behavior, but as for plain double-clicks? Who knows.

I think maybe it was worth it to learn this knowledge. I'm not actually sure of that one yet.
