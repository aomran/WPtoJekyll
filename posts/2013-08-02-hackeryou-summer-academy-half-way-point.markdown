---
layout: post
title:  HackerYou Summer Academy - Half Way Point
date:   2013-08-02 17:07:18
categories: art-submissions-app education git-2 git-commits hackeryou-2 just-build-it learning-software open-source real-app tdd teach-code teaching-code uml web-development
---
As we are officially past the half-way point of HackerYou's Summer Academy, it's a good point to stop and reflect on the experience so far. First I should say that this has been a great experience so far -- I have no second thoughts whatsoever about having chosen to do it. Summer Academy feels very much like the Bachelor of Education experience that I had two years ago. An interesting educational experience, so many things learned and many interesting people met. I guess the big difference is that the job prospects for developers are about a hundred times better than for teachers.

Here are some takeaways from the course so far:
## Over 200 commits later
Before Summer Academy started, I wrote:
 I’m looking forward to a lot of practice this summer to build my intuition (knowledge and experience to tap into). To reach “proficient” status I will need to keep practicing and learning... 
Well I certainly have been practicing; this course so far has given me plenty of opportunities to write code. More than 200 git commits later, I feel a lot more comfortable programming. With every commit, I feel a bit closer to "proficiency". My plan for the second half of this course involves even more coding; my goal is to break the 500 commits "milestone". It's a pretty simple concept, the more code we write the easier it gets and the more skilled we get.
## First open-source contribution
We used the Carrierwave gem to add photo uploading capabilities to our twitter clone app. The instructors followed the rather cryptic README directions on the gem's Github repo to get the gem working. As a challenge we were asked to improve the README file and submit a pull request.

My contribution was a "Quick Start for Ruby on Rails" section so that people can get the gem up and running on a Rails app very quickly. This should be useful for people who are testing the gem out or who have a simple implementation in mind. Who knows if this pull request will get merged but I know that there are some students who are benefiting from the addition.

The thought of making a pull request was scary at first but the worst that can happen is that the pull request gets ignored. The upside is that I can now say that I made a contribution to an open source project and the next contribution will be easier to make.
## Designing an app
Before coding, it's a good idea to sit down with old-fashioned pen and paper, and sketch out the models and their attributes and relationships. Many design decisions happen at this stage so iterate here to make the associations as simple as possible.

This part is very hard to get right but it's important to keep one thing in mind, simplify. If something seems complicated then it might be that you're over-thinking things. Complicated relationships could just mean that you're missing a model.

After the design stage, we write some tests and implement the code. This part is easy as pie (well as making a pie… which I hear is hard).
## Rails components as lego blocks
What's interesting is Rails is more like an ecosystem than a single entity. The components of Rails are like lego blocks. Once one understands the components of Rails… one can combine them in arbitrary (and creative) ways to build whatever they want. Once you know the major components and have the skills to research the rest… well what's left is to just sit down and build stuff. As you build apps you gain interesting experiences and learn how to solve common problems.
## Just build it
Keeping code DRY, testing, maintenance, scalability, readability, doing things the "right way", all of this can paralyze someone who is new to programming. What I have learned so far is that it's important to start small and **just get something working**. People will differ in opinion about what the "right way" is anyhow and scalability is not an immediate issue when we're trying to build a MVP. We shouldn't worry about "perfect code" or anything of that nature, just build something. Code is malleable enough, it can be improved upon in the future. One key thing though… if you can write tests for the code then future improvements will be much easier (and more likely).
## Testing is good
There are many testing philosophies. And different projects will require different solutions. But at the end of the day, doing "some" testing is better than no testing at all. So pick a strategy and go with it. Writing tests makes development a lot simpler. Changing implementation becomes just a matter of running the tests and fixing errors. Confidence in the application goes through the roof.

After talking with one of the mentor's last week, I decided to start with integration tests using the Capybara DSL. This tests the interface of the app -- it tests how the user would use the app. Then if needed, I drill down and write some functional tests. This usually happens if I need to test something that I can't test from inside an integration test.

Model/unit tests are rare, this is only for validations and custom business logic in the models. For many situations, very little of this is needed.
## Teaching is a great way to learn
I spent last weekend preparing for a "lighting talk" type presentation that I gave on Monday to fellow HackerYou students. The purpose of the presentation was to give a big picture (and very visual) overview of how the shopping cart app works. My hope was that a visual presentation (UML Diagrams and Flow Charts) might help people understand the big picture better. Many students told me that the presentation was very informative - which is great. What I do know for sure is that my understanding of the material is much better after preparing and delivering the presentation.
## Work on a real app
At Voix Visuelle (an art gallery that my wife is associated with), artists mail in their work and application forms on a CD/DVD. A lot of manual work is involved during the processing of these submissions.

This week I started working on the rails application to ease these types of administrative processes at art galleries. This app will allow art galleries to accept art submissions online, automating a traditionally very manual process.

It's satisfying to know that real users will use this app in September. The app presents me with intellectually stimulating problems and lots of practice. There is also a chance that I can make this app into a Saas or make a profit freelancing installations for artist galleries/centres.