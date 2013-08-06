---
layout: post
title:  HackerYou Summer Academy Week 2 - Thinking Like a Programer
date:   2013-07-13 22:27:06
categories: hackeryou hackeryou-2 learning-software oop pair-programming programming rails ruby ruby tdd tdd web-development
---
The second week of HackerYou's Summer Academy went by in a blur. My comfort level with the material covered is pretty high, so I ended up pushing myself to do something a level or two higher in difficulty. I guess I had so much fun refactoring my code to use more advanced techniques, pair programming, and testing that the week just flew by.

We worked on at least five different Ruby exercises and spent a good amount of time working with Ruby on Rails. We got the opportunity to add some Bootstrap styles to Rails applications and I took some time to practice Javascript/jQuery on some Rails applications as well.

The (overwhelming?) amount of programming that we're doing is certainly paying off. I feel right at home in the command line, I'm using "advanced" Git/Github techniques, and programming feels a lot more natural.

The main takeaway (for me at least) this week was that it's important to think like a programmer. This means several things:
## Start small then expand
Novice programmers can get stuck trying to think about the final solution to the problem. Right now I feel I am a better programmer because I force myself to start small. I tell myself that I should slowly build the program and not tackle too much at a time. What's important is that I get something working and then build additional functionality later.
## We code once, read many many times
There is no sense worrying about how many lines a program takes. A longer program might in fact be better if it's easier to read. Simply put, our code needs to be *readable*. This means others should be able to understand it and we should be able to pick it up months from now and continue where we left off.
## Modular and Single Responsibility
Methods should ideally do one thing. This makes them easier to understand, easier to test and easier to modify and adapt. And I should add that the methods become easier to write.

Classes should also have a single responsibility, but I find that this is easier said than done. Ideally we would extract out code into another class if possible. With many small methods/classes, our code will read like a natural language (English) and be a lot easier to follow.

This week I spent quite a bit of time thinking about what belongs in a class or method; I am taking these design decisions a lot more seriously. The result is that my code is better.
## Test First
For the past year I had the unfortunately common experience of working with a codebase that had zero tests. I was responsible for making sure an eCommerce website and a student database were running smoothly. The technology stack was hacked together by many different people over many years and had no tests or documentation. The experience was frustrating so to be honest I was sold on testing before writing a single test.

I should say that by "test", I mean writing code that automatically tests your code. These automatic tests are run from the command line and ideally would finish checking the code in a matter of seconds. Automatic tests save a tremendous amount of time because running automatic tests takes a fraction of the time that is required to verify our code in a browser or REPL.

Tests ensure that the code is well designed because bad code is hard to write tests for. Tests make it simpler to build on/extend/improve the software because we can be confident that we didn't break previous functionality.

Testing also does something that we sometimes take for granted; it sets intentions. The process of writing a test gets us to think about what our program should do and gets us to define what "done" means.

Test Driven Development is the process of writing tests first and then using them to drive the creation of the code. I personally feel that TDD makes me a much better programmer; it allows me to solve problems that I couldn't hope to solve without it.

So far I understand that it's important to keep tests **small** (single assertion in each test) and **independent** (meaning running them in a random order should give the same result every time). And of course test first.
## Pair Programming
There were many opportunities this week for pair programming. My goal this summer is to try to pair-program as much as possible because it's an extremely effective way of coding, it's enjoyable, and many software companies use it almost exclusively.

Pair programming requires good communication but most importantly it requires good critical thinking skills. Ask good questions if you don't understand what is being coded. Sometimes it's hard to understand what your partner is trying to do.

With pair programming I find that solutions to complicated problems can be arrived at much more quickly. The solutions are also better designed and have a higher chance of being production quality.
## Don't get carried away
And last but not least, if it's working and the design looks good (not necessarily perfect) then move on.