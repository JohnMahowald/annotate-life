# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Background.create(img_url: 'https://farm3.staticflickr.com/2943/15146540179_39312c7edd_k.jpg')
Background.create(img_url: 'https://farm4.staticflickr.com/3866/15391652342_8e327ad6cf_k.jpg')
Background.create(img_url: 'https://farm8.staticflickr.com/7365/9770925031_1dfce38eea_b.jpg')
Background.create(img_url: 'https://farm2.staticflickr.com/1178/1350845804_d0984de002_b.jpg')
Background.create(img_url: 'https://farm9.staticflickr.com/8041/7981860626_c71f94a72b_b.jpg')
Background.create(img_url: 'https://farm9.staticflickr.com/8323/8079071366_f6c7d5eafa_b.jpg')

Texture.create(img_url: "https://farm6.staticflickr.com/5565/15171002702_cceab5478b.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3862/14781229294_356807431d_c.jpg")
Texture.create(img_url: "https://farm3.staticflickr.com/2946/15164838499_0f1ccf2fea_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3911/15207604796_1a4ef9ef81_z.jpg")
Texture.create(img_url: "https://farm6.staticflickr.com/5558/15165610296_c21f13d3a5_z.jpg")
Texture.create(img_url: "https://farm3.staticflickr.com/2944/15218028989_8a71034eea_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3873/15134164379_69da6af994_z.jpg")
Texture.create(img_url: "https://farm6.staticflickr.com/5568/14644908370_ac264b6b7b_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3852/15053665197_2908ba70f4_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3875/15205952686_0426ab0d44_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3858/15161795991_3884658a3f_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3838/15212800529_6b03bc0a2e_z.jpg")
Texture.create(img_url: "https://farm6.staticflickr.com/5561/15310551171_901cda4ee6_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3865/15016557100_5280f88e18_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3849/15081337010_020907cf5c_z.jpg")
Texture.create(img_url: "https://farm4.staticflickr.com/3882/14643777647_9e42796ddd_z.jpg")

guest = User.create!(
  email: "john.mahowald@gmail.com", 
  password: "johnjohn", 
  fname: 'John', 
  lname: 'Mahowald')

aa_journal = guest.journals.create!(
  title: "App Academy",
  description: "My adventures in learning code")
travel_journal = guest.journals.create!(
  title: "Traveling",
  description: "A collection of stories from the road")
career_journal = guest.journals.create!(
  title: "Career",
  description: "Philosopher becomes a developer")


first_weeks = aa_journal.chapters.create!(title: "First Weeks")
games_chapter = aa_journal.chapters.create!(title: "Games")
rails_chapter = aa_journal.chapters.create!(title: "Learning Rails")
javascript = aa_journal.chapters.create!(title: "Javascript")
meta_programing = aa_journal.chapters.create!(title: "Meta Programming")
backbone = aa_journal.chapters.create!(title: "Backbone")

first_weeks.stories.create!(title: "6 o'clock...", text: "Today was full on. Being unemployed has had its benefits; namely being able to wake up later than 6:30 nearly everyday. That said, today began promptly at 6 with the dreaded alarm clock and the blessed warm shower. I was sure to give myself plenty of time to figure out my new commute and properly caffeinate myself before heading into school. I arrived around 8:30 with plenty of time to meet some of the new student and hear some stories of how others have got here.
It was surreal to sit in the first lecture. I found myself remembering all the times that I was dreaming of being in this very seat.  Here I am. Week 1, Day 1. I made it.
After a short introductory lecture, we were quickly paired into groups and sent to work on the day’s assignments. I was paired with Jordan, a friendly bay-area native with a background in mathematics. It took some adjusting to peer coding and working on a foreign machine though we quickly started to find our rhythm and worked through the practice problems.
Today was primarily review. Our practice problems ensured we knew key array, hash, and enumerable Ruby methods. New in these problems was working with Ruby’s ‘set’ module which produces an unordered collection of values containing no duplicates. In one of our exercises we defined our own ‘set’ class and provided functionality to compare two collections of values and return unique or shared values.")

first_weeks.stories.create!(title: "Tic Tac Slow", text: "Today began with a lecture reviewing options hashes. I am impressed with Ruby’s #merge method which was particularly useful for overriding default method options with an option passed as an argument. This led quite naturally into us pairing off and starting to build our own classes using instance variables and automatically generating getter and setter methods with attr_accessor, attr_reader, and attr_writer.

Most challenging today was building a Tic Tac Toe game. We built a series of classes for rendering the Tic Tac Toe board and for playing the game. Players have the option of playing another human or playing against the computer. The computer is supposed to pick a winning position if one is available. Otherwise, the computer selects a random position and continues to move through the game. So far this was the most robust program we have written in the course and it required keeping track of all the classes and methods  for successfully playing the game. Although it was a challenge, I really enjoyed building the Tic Tac Toe puzzle.

In their own way, it seems like many of the students are feeling challenged by the program and excited to be here. I have enjoyed meeting so many interesting people and look forward to spending more time getting to know all the students while peer coding.

I was lucky to finish my day having my good friends Ryan and Mary stop in from Yosemite. Ryan just finished the long process of converting his Westfalia camper van. It was incredible to see how much space the van affords without feeling like an oversized car. The three of us grabbed a late night burrito on Mission street and came back to my new room. It was a total treat to have some great, smiling faces come in and remind me that in addition to being an app academy student, I am also a human who loves spending time with good friends.

So far the intensity of this program has not been overstated. Although it is only Tuesday, I am looking forward to catching a couple extra hours of sleep on Saturday and having time to review everything we have learned so far. For now, it’s time to get back to studying and preparing for class tomorrow!

Signing out,

John")

first_weeks.stories.create!(title: "A_P AC_D_MY", text: "Today was all about building a hangman game. I arrived in class grateful to have a coffee in hand and ready to face the challenge of having a day at app academy with too few hours of sleep. I was paired with Yuriy and we immediately developed a strong workflow. We started the day building the mastermind game which creates a unique 4 color key using the 6 primary colors of the rainbow. The goal of the user is to discover the color key using hints generate by the program. The program will tell the computer if the user guesses a color that exists in the sequence, and will tell the user if that colors is in the correct order of the sequence. We quickly built the program and felt confident about our code being sufficiently DRY and having clear, well defined methods.

The real fun began when we started building a game to play hangman. Our program allowed the user to challenge either the computer or another human forcing us to think critically about how to divide our program into well ordered classes. In the end, we developed separate classes for human players and computer players that shared the same public API but with differing logic under the hood. It was particularly to design our program to make intelligent guesses when trying to guess against a user. To make this code work, we found ourselves iterating through the dictionary to find the most probable letter for the user to guess.

Today solidified how to write clear, concise methods with intuitive variables. Although our code was not perfect, we found ourselves thinking critically about the best way to structure our classes to ensure players could interact with our game class whether the player was a computer or human.

Yuriy and I nearly finished building our game before the class and I was reminded how important it can be to step away from the computer for a moment to remind myself that I am a human and a mover in addition to being a programmer and critical thinker. After finishing my commute home by BART and skateboard I was able to revisit the problem with a clear head and make progress much faster than I was after sitting in front of the screen for 3 hours unbroken.

In all, I am thankful to be here, happy and healthy, and am looking forward to the many more challenges that lie ahead. Be sure to check back in soon to hear more about all of them!

Until then,

John")

first_weeks.stories.create!(title: "Breaking the Loop", text: "Today was all about recursion. I was paired with Jayson and after working through a couple of practice problems writing blocks and procs, we spent a majority of our day building recursive methods. My greatest challenge in writing recursive methods is imagining how the program will return information once it reaches the base case. When writing iterative methods, the logic is visually sequential making it simple to understand where variables are compiled and modified. When writing a recursive function it can be challenging to see how those objects are eventually compiled. As a result the day was mentally exhausting as Jayson and I attempted to visualize the return of each recursive method we wrote.

The day fortunately finished with a practice problem requiring zero recursion! We worked on building an elegant solution for the Ruby Quiz Word Chain problem. We solved the problem by creating a WordChainer class that initializes a dictionary of valid words. A user selects a starting word and a target word. The program then searches and stores for any words that share all but one letter. Once all the words sharing letters have been selected, we use the newly compiled list to continue searching for words that share all but one letter. The program stops once it has found our target word, and uses some fun Hash logic to build a visual representation of the path from source to target.

This exercise was a nice break from recursion. It only reaffirmed my interested in iterative logic for its visual component. Although I always have a notepad next to me for brainstorming solutions to problems, I have never written as much as I did today. I look forward to a time when recursion will become more intuitive!

For now, however, I am going to try to get some sleep. I can only hope that a good nights rest will be the best way to solidify a day of creatively thinking through challenging problems. Tomorrow is Friday which will complete my first week at App Academy. I am approaching tomorrow with enthusiasm knowing I will have the weekend to sleep in and revisit problems throughout the week that I found particularly challenging. But for now, itÕs time to rest my eyes and visit some dreams!

Until next time,

John")

first_weeks.stories.create!(title: "A Moment of Rest", text: "Completing my first week at App Academy felt like nothing other than a great success. Not only was it a challenge to complete the week but there was a tremendous amount of momentup and support leading up to that point that made Friday night feel like a milestone. I first started dreaming of learning how to be a web develper a few years ago while traveling. I found myself drawn to programming for its emphasis on workin in teams to think creatively through problems. Each day this week has shown in its own way how challenging and fulfilling that experience can be.

On Friday I was paired with Ryan, a SoCal native who made it to App Academy after spending time on the East Coast and China. As someone who loves a good story I was compelled to hear more about his global experiences. That said, the name of the game in App Academy is focus. Ryan came to App Academy a couple months early to work as a student intern and his prgramming skills certainly show it. I had a great time programming a version of the BFS and DFS searching algorithms. We used those searches to build a program “Knight Travails” where a chess knight can be given a start index and an end index and find the shortest path between positions.

The program was a great way to learn about data structures. We started the program by building class PolyTreeNode whereby nodes contained information about both their parent and their children. Building a data structure was intimidating at first glance but wound up being a great example of the power of Ruby in particular and object oriented programming in general.

Ryan and I were able to finish our progject a bit early and spent most of the afternoon reviewing material from the past week. After writing a version of a quicksort and merge sort algorithm we revisited recursion. Ryan was a tremendous help thinking through recursive problems and I am excited to feel prepared for our assessment tomorrow which will surely cover some recursive problems.

I was overwhelmed to arrive at Friday night with a bit of time to relax. After sleeping in on Saturday and running a few errands, it was back to the computer screen to learn more about github and to rebuild a couple of problems from the previous week. I have started pushing my assignments to my github page and will continue to update it as I go through the program. For now, however, it is off to get a good nights rest before beginning week two. I can only imagine what I will know by this next Friday!

Until next time,

John")

games_chapter.stories.create!(title: "Mine! Mine! Mine?", text: "Today began with our first formal assessment. Up until this point App Academy has evaluated our preparedness in multiple ways. Each student must go through an intensive interview process directed at assessing your ability to problem solve using essential programming logic. After being accepted, students are expected to complete a series of prep work and then evaluated on their preparedness with another assessment. Today however was the first formal in-class assessment and the stakes felt high. If you fail just two of the assessments you will be asked to leave the program. The speed at which this course moves can be it’s most challenging aspect. Assessments seem to ensure that all students are keeping up with the course and have a strong understanding of the course material. There is not much room for a shallow understanding of core subjects. It was intimidating to start a Monday morning with a timed assessment. It has certainly been a while since that has happened!

After using my weekend to repeatedly taking the practice exam I came into class confident that I would be successful. Twenty five minutes into the test I was not disappointed. I had completed all the problems and was left with plenty of time to review my answers and consider better ways of solving them. The test is a series of spec that you are expected to ‘pass’ or to ‘make them go green’. I was relieved when I looked at my computer screen to see all the specs green, pure and true.

After the test we had a short lecture by Andrew about JSON, YAML, and serialization in general. Although we did not use JSON or YAML in the exercises today, I am looking forward to building more robust projects that will require serialization. It only means that Ruby is about to get more powerful and our toolbelt is going to get a bit heavier.

That said, today was all about building the Minesweeper game. I was paired with Brian and we quickly began to build three separate classes. The first class was a Minesweeper class which essentially orchestrated the flow of the game. The class initialized our second class, the Board class, which in turn initializes a board consisting of instances of our third class, the Tile class. The Board class was the most robust as it required methods for generating, displaying, and updating the board. The Tile class contained information about the contents of each tile instance. Each tile contains information about whether it is a bomb, whether it has been revealed or not, if it has been flagged, and who its neighboring tiles are. Building all the functionality of the minesweeper required Brian and I to ensure that methods were well organized into classes. Instances of each class were then able to interact with one another, particularly between the Board and Tile class. It was a great way to see how to structure object oriented design.

Brian and I nearly finished building the game in class and I spent much of my evening refactoring and considering ways to make the methods more clear. Ruby’s power comes from its offering of a variety of methods to accomplish the same task. I suppose it is both its blessing and curse. Refactoring is often trying to select the right methods to accomplish a task in the most direct way possible.

Tomorrow we are will start to take our game-building to the next level. We are going to spend the next two days building a chess game. I am both excited and intimidated by the prospect of building such a robust game and I look forward to being on the other side of the built with an even stronger understanding of the power of Object Oriented Programming.

Check back in tomorrow to hear all about it!

Until then,

John")

games_chapter.stories.create!(title: "Anywhere a King can go...", text: "Today was the second day of my second week at App Academy (ah I love symmetry) and we began building chess. We had a lecture on class inheritance, error handling, and Ruby’s ‘super’ keyword before jumping into the fun. I was paired with Christian and was excited to get to work. Watching Christian work with a computer is like watching a seasoned musician play their instrument - his workflow was thoughtful, deliberate, and practiced. We began building the chess game by writing classes to describe the movement of each individual piece. First we created a Piece class and made separate pieces inherit from this class based on their movement. Piece had three primary subclasses: Sliding Pieces, Stepping Pieces, and Pawns. Sliding pieces are any piece that is able to move across the board from one position to another (i.e. bishop and rooks). Stepping pieces are pieces that move one step in a particular direction. A good example is a knight or a king.

Our greatest challenge starting off was how to write a method that would return a list of all the valid moves. Our solution was to compute the delta’s for sliding and stepping pieces(the direction the direction the pieces are able to move) and then recursively call that method until it hits a position that is ocupied by another piece or is no longer on the board. Last week we rehearsed writing a variety of recursive methods. It was neat to work out how to use recursion to accomplish our goals.

Once we had pieces that could populate a list of valid moves we worked out how to render a display for the board and how to accept user input. We accomplished the later by designing a separate ‘Move’ class which would parse user input which could then be used to modify the board state.

We finihed the day by refactoring our code. We split up each of our ‘Piece’ class files to ensure readbility and significantly shortened our ‘reset_pieces’ method from about 25 lines to about 10. By 6pm it felt like we still had steam to keep working but it was time to wrap up class and head home. I am refreshed knowing that we will return to our projects tomorrow and finish implimenting some of the more fun parts of the game. Check back in tomorrow to hear all about it!

And it you find yourself curious to see how we implimente the game, check out my github repo and have a look!

Until next time,

John")

games_chapter.stories.create!(title: "A Gamblers Game", text: "Each day at App Academy is full of learning new information. So far I have been impressed looking back at everything that I have done. It has only been two weeks and I am already writing ruby syntax that I would not have known how to read before starting the program. It has been refreshing to be in such a fast pace learning enviornment albeit a bit intimidating.

Tomorrow is our second exam. The first exam went quite well and I passed all the specs on my first time. This entire weekend has been spent practicing for the assignment by repeatedly doing the practice assessment and then essentially rebuilding the practice assessment in my assigned build of a poker game. Key to understanding the assessnemtn and the poker assignment is understanding RSpec syntax and how ruby handles classes. The practice assessment uses a deck of cards in modeling a game of blackjack. There are three separate card related classes - a card class, a deck class, and a hand class. The hand class generates a new hand with an instance of the deck class using a factory method. That is to say, the deck is passes to the class itself which in turn generates an instance of the Hand class. It is a fancy way of initializing the Hand class without having to build in an instance of the deck within the Hand class.

All that technical lingo aside, it was cool to see the power of object oriented programming. After building so many games I finally feel like I am getting the hand of how to best build well defined, clear classes and have found myself curious to find a good book to read further on object oriented design.

That said, this weekend had plenty of readin on its own. In addition to studying for the exam and finishing building my poker game I was preparing for tomorrows curriculum. Tomorrow we make the change from writing mostly all ruby to learning about SQL. SQL is a powerful tool for managing large amount of information and I look forward to seeing how it is used with Ruby (and eventually Rails) to build robust, powerful applications.

For now, its time to run through the practice one more time before getting some sleep and heading into the exam tomorrow ready to smash!

Wish me luck,

John")

games_chapter.stories.create!(title: "Asteroids", text: "The JavaScript adventure continued today with building a version of the classic game Asteroids. Despite its friendly sounding demeanor, the game wound up being one of the more challenging projects we have had. My saving grace was being paired once again with Anna to face the challenge. We began by learning how to use the HTML5 canvas tag and kept things simple by creating asteroids as circles with a fixed radius. We carefully coded all the logic to draw circles on a page, clear the canvas, move the position of the asteroid, and re-render the circles. We had a proper celebration when we finally saw asteroids scroll across the screen.

Asteroids is the type of project I look forward to continuing to work on. The game highlights the ability for JavaScript to set intervals that can constantly execute callbacks. Although Anna and I took our time today, I felt like we had a solid grasp of the core concepts when we were problem solving. For now, however, there is still a lot more work to put into the project and I look forward to watching the implementation develop.

As we move from Ruby on Rails to JavaScript, we have begun to focus more on front end design. Tomorrow we will begin working on CSS. This will be our first time focusing primarily on programming an aesthetic. I’m looking forward to using my mind in a slightly different way!

Although it may be some time before then, stay tuned for a demo of Asteroids. I’m sure it will be work loosing a couple of minutes of your day!

Until next time

John")

rails_chapter.stories.create!(title: "Connecting the Rails", text: "Today we moved from writing pure SQL to writing SQL queries within ruby docs. We started by creating a couple of tables using Sqlite3 and then accessd those databases in our ruby docs using SQLite::Database class. This class makes it easy to make calls to the SQLite database without ever having to leave a ruby document. We used this newly learned skill to start and build a simple application that allows users to as questions and post replies to the questions. Our application was able to track users, the questions they ask, the number of replies that each question has, the number of times a question was liked, and many other features. All of this was acomplished by creating class methods that woudl run SQL queries and return instance variables of the related class. This exercise began to soldify for me both the power of well ordered Class methods and the ability to turn database information into ruby objects which we are then able to use in object oriented programming.

In the end it is nice to both know how to make SQL queries and to know that ultimately Rails will abstract the queries a bit and likely become more intuitive. I am excited to see the various ways that my understanidng of SQL will be useful in the future. There is a tremendous amout of information stored in databases and knowing how to make clear, concise, and well structured SQL queries seems to be the best was to gain access to that information to produce the desired result.

For now, howerver, I’m off to get a proper nights rest before we move to building Rails apps that will connect our database tables with the has_many and belongs_to associations.

Until next time,

John")

rails_chapter.stories.create!(title: "Rails::Released", text: "Today was our first official day working with Rails. Until this point we have worked primarily with Ruby and dabled in SQL. Rails is a natural transition and has made developing fun without feeling weighed down by extensively writing boilerplate code to make our application run. CJ gave a lecture this morning where he began pointing out that the release of Rails 4.2 and our release to start building Rails apps were synonymous. Although we are not yet able to appreciate the functionally that is included in the new release of Rails I still love the symmetry. 

Today I was paired with Mike, a friendly guy from Portland who just returned from a long stint on the East Coast. Welcome back to the West coast, dude! Together we built a URL shortening app that takes user input through the console and generates a unique 16 digit code that is stored in our database. The 16 digit code could then be used to recover the long URL and launch the requested website using the launchy gem. Although our program was not the most useful in its application, it was a great opportunity to understand how rails builds relationships in databases. 

Our primary focus today was using migrations to generate tables in our Rails app and then building the relatioships between these tables using Rails models. We learned how to define primary and foreign keys and the power of ActiveRecord’s ‘has_many’ and ‘belongs_to’ associations. One of the most interesting aspects of Rails associaitons we employed today was the use of passing Procs directly to our has_many associaiotn to generate unique results. Here’s what I mean: As you can see, has many takes its standard arguments: the method call, the class name, the foreign key and the primary key. The pronounced difference is the Proc which is used by ActiveRecord to generate a query with distinct results. By the end of the rails curriculum we will have built our own active record and I look forward to seeing how the Proc is actually processed in the internals of ActiveRecord. 

For now, though, it’s time to turn my attention to running through the prep work for next Monday’s exam and catching a bit of sleep before another day of learning more complex Rails queries! 

See you tomorrow! 

John")

rails_chapter.stories.create!(title: "Models, Relations, & Joins", text: "Today in App Academy App Academy we built out a simple application for recording polls. The entire application was built with a Postgresql database with tables for Users, Polls, Questions, Answer Choices, and Responses. Although the application was fairly simple it was a great opportunity to practice building models in Rails that reflected our database schema and develop the relations to form queries on our database.


Our project began with creating a database with the necessary foreign keys that would later be used to build has_many and belongs_to relations. The database was simple with database level validations for NULL values and indexes for foreign keys. Although we seeded our database with limited content we are trying to develop good habits for query optimization by building indices where pertinent.


With our databases created and some basic content seeded in our database we began to build our related models. Our models consisted of numerous has_many and belongs_to relations. Most unique in our relations was a has_one through: relation that we defined in our Response model. In our application a response is a user’s selection of a particular answer to a particular question in a particular poll. Our relation looked like this: This particular relation allowed us to find the particular question in which our response made reference referring. The answer_choice model references the question_id foreign key which in turn pointed at a particular question in our database. It was fun to make use of the uncommon has_one relation in an instance where it built clarity into our code.


With our relations build we utilized Rails built in validations to reflect our database schema. Essentially we used the presence: true validations for any columns where we did not NULL values in our database. We then went on to build some custom validations that would ensure a user could only answer a question and a user was unable to answer questions in their own poll. The former was accomplished by querying the database to see if it had already recorded an instance of this particular user’s response. The later was accomplished by querying our poll to find the author of the question related with our response and then comparing it with the current user.id. Although the queries were ultimately simple in their implementation, it required carefully thinking about the information that each query would return.


Our most interesting query came when we were attempting to compile a summary about the questions and the number of responses for each question. Here is our implementation: We were careful to write a method compile_results such that we would avoid a N+1 query that would count responses upon iteration in our results method. We accomplished this by caching a count for each response in our compile_results query and referring to this relation in our results method. Much like our indices in our database, this was not a necessary precaution considering the size of our data set but ensured the ability to scale our application.


In all, the poll application was a great opportunity to solidify my understanding of rails models, relations, and joins. Tomorrow we will be working on individual projects. I look forward to spending most of the day with headphones continuing to build on my understanding of rails. It is also Friday and I look forward to a much needed chance to rest over the weekend.


Until next time,


John")


rails_chapter.stories.create!(title: "#ReviveTheRolodex", text: "Its a bit later than usual today so I will be a bit more brief. Today we used Rails to build a basic contact list management API. Instead of building full Rails views, we used the ApplicationController to render json for all of the requests made to the server. Our schema was essentially this: Contacts are objects containing information about their name and email. They are created by users who are the manager of the contact. A user is able to share a contact with other users. We accomplished this by creating a ContactShare object which contained information about the contact and who it was being shared with.

We had some extra time today to build out our API and created an option to leave comments about contacts and users. We accomplished this by creating a polymorphic relatinoship between contacts, users and the comments. Once again it was a great example of the way that Rails abstracts much of the database level queries with a bit of ActiveRecord magic.

In other news, we had our third exam today. I passed with flying colors (flying green specs!) making this the half way point for all of our exams. It is a relief to know that there are only three more, though next week the exam will be much longer and will require building a robust rails application with authoriztion. App Academy never promised that this would get any easier!

Onward and upward!

John")

rails_chapter.stories.create!(title: "Authorized Beats", text: "Today I solidified my understanding of building Rails applications with authentication by creating a music application. The application was built on a postgres database and allowed signed in users to gain access to a list of bands and their accompanying albums and tracks. Users were able to add new bands, albums, and tracks. Users were even able to make comments on tracks and view comments from other users

In all the day was a great way to solidify my understanding of building authorization in rails. Tomorrow we will be building a clone of Reddit, utilizing the power of authorization along with database relations. More tomorrow!

Until Then!

John")

rails_chapter.stories.create!(title: "30 Minute Auth", text: "This week we built a number of Rails apps. I have now got to the point where it takes me about 30 minutes to have a Rails app up and running with Auth, encripting passwords with BCrypt and creating session-tokens with Rails’ Secure Random. I feel like there should be no reason not to start a project because the initial buy-in takes a lot of work. Knowing how to rapidly build authentication feels like a boost in my Rails toolbelt. Rails already makes it easy to get straight to the fun of programming, and getting through Auth in under 30 minuts makes it even more fun.

On Friday we built a simplified clone of Reddit. We created a site that would allow users to log in, create subs, post to subs, and make comments on those posts. The most fun portion of this project was trying to populate all the nested comments for each post by only querrying the database a single time. Doing so required maping the results of our query to a hash which we could the use to recursively call a partial that would display nested comments. It was a challenging project to understand conceptually making the implimentation all the more fun.

This week we will complete our Rails curriculum by building a lite version of Rails and then move straight on to Javascript. The toolbelt keeps getting heavier, but I am feeling up for the challenge!

Off to catch some sleep,

John")

meta_programing.stories.create!(title: "Getting Meta", text: "The workflow at App Academy ensures that you are always a bit overwhelmed by both the volume and the depth of the content they expect you to learn. Each time I seem to have a handle on a subject we begin working on something more complex which challenges me to think about the subject in a new way. Course content builds on itself and as we enter into the fourth week, I am excited to see what more we will be learning.

On the forefront of my mind is the exam on Monday. It will cover SQL queries and building relations in ActiveRecord. Over the weekend we finalized our solo project from Friday where we built a ‘lite’ version of ActiveRecord. ActiveRecord is a model within Rails that makes Rails particularly powerful. Instead of having to build relationships between databases, models, views, and controllers, ActiveRecord abstracts much of the boilerplate code allowing developers to focus on building applications that make use of the relationships that ActiveRecord provides. It is robust and building a lite version required a proper introduction into meta programming.

I found this weekend’s exercise particularly challenging. When meta programming, it can be a challenge to know if you are working with an instance of a class or if you are defining the class. Meta programing allows methods to create new methods within instances of classes and then call those created methods on other methods. Mentally it can be extremely challenging to wrap your mind around it!

One of the most challenging exercises in the ActiveRecord lite assignment was discovering how to define the relationships for ActiveRecords ‘has_many’ and ‘belongs_to’ relationships. In short, we wrote methods that would provide default foreign keys, class names which could then be overridden by a user if provided. It gave me a great appreciation for how much work is abstracted away by Rails and fortunate that I did not have to reinvent the wheel.

Tomorrow is the third exam. After finishing it we will be half way through the exams for the course. I’m going into it prepared, anxious, and happy to get a proper nights sleep before the challenge!

Back again tomorrow night!

John")

meta_programing.stories.create!(title: "Reinventing The Wheel...", text: "…turns out, it’s still round.

Today was a big day. We started the day with a two hour assessment testing our ability to build auth and a simple page that displayed posts and tags to users who were logged in. I came into the test feeling prepared and was excited to finish with time to spare. I celebrated on my lunch break with one of my favorite treats: An Affogado!

After a short lecture and introduction to how to create our own server in Ruby, we started work rebuilding Rails from the ground up. At this point we have been using Rails as a framework to rapidly develop apps with the many built in Rails features. It can be easy to take those features for granted. The Rails controller is able to handle HTTP requests, route requests to a controller, call the correct controller action, and render a response nearly completely behind the scene of the Rails developer. In building my own version of Rails, I have come to appreciate the complexity of how Rails handles server requests and am glad to know that it is an established framework supported by people smarter at developing than me!

Today I finished with mapping request query strings, route parameters, and the post body into a hash much like Rails handy params hash. After spending some time looking for a recursive solution to the problem of returning a deeply nested hash I resorted to the iterative solution: Tomorrow I will continue with the project, trying to build a Route and Routes class to continue learning how to handle HTTP requests. But nothing will happen without a proper night’s rest!

Until then,

John")

meta_programing.stories.create!(title: "Off the Rails", text: "Today I finished building the essential components of Rails. I left off yesterday with writing Rails robust params hash by taking input from the query string and the post body. By the end of the day today I added to the params hash with parameters extracted from the route data. Like most things in both ActiveRecord and Rails, it was fun and challenging.

The routes were actually divided into two separate components: A Routes class and a Router class. The routes class took in parameters and created an instance of a route. I verified that the incoming HTTP request method and path were supported in the scope of my application. I then called the request controller method using the data stored in the route’s instance.

The Router class stored instances of my routes class and had a fun method for ‘drawing’ the routes using some metaprogramming magic. When a request came into the router, it would send a new instance of a route to my routes array. The magic happened here: When an instance of the Router class was created, these four helper methods were initialized. When the a HTTP ‘get’ request came in, it would then add a route into my routes array which could then be used to handle requests. This is just one example of how building both Rails and ActiveRecord was conceptually a challenge

Building Rails from the ground up concludes the bulk of our Rails curriculum at App Academy. For now, we are turning our attention to Javascript. Two days ago I knew nothing about JavaScript. Tomorrow I will be writing recursive functions in JavaScript. If there is one thing I have learned from App Academy (and there are many), it is that you can learn faster than you imagine. Check back in tomorrow to hear more!

Until then,

John")

meta_programing.stories.create!(title: "Check Your Behavior at the Door", text: "Today we focussed on Behavior Driven Development. Throughout the course we have been given a variety of apps with specs to pass. Today we focused on writing specs for an app as we designed it.

The app that we built today was a goal traking app. It allowed users to sign in, create goals, and track goals as either pending or completed. Goals additionally had the function of either being public or private. A user could decide if they wanted to make goals public or private when they created the goal.

Likely the most interesting implementation in our application was the creation of a polymorphic comments class. We allowed users to make comments on either users or their goals. It was interesting to try and write the rests before creating the comments model.

Today was a great primer on testing application behavior. I look forward to continuing to develop with tests in the future!

Test tomorrow. Off to get a proper night’s rest!

John")

javascript.stories.create!(title: "Another Day, Another Language", text: "Writing code in a new language has come to be a regular experience in App Academy

. We were given just one day to learn HTML and CSS, and in two days we learned essential JavaScript. Today we put our understanding of JavaScript to the test by returning to some assignments we previously completed in Ruby by rewriting them in JavaScript. Cross language translation required knowing the logic behind each method and having a strong understanding of the core Javascript functions.
We began by writing prototype functions for Arrays that would return all the unique values in an array, double all the elements in an array, and transpose the array. We continued by replicating Ruby’s enumerable methods by writing a JavaScript implementation of ‘each’, ‘map’, and ‘inject’

With some introductory material out of the way, we turned to writing some recursive methods. I typically do not find recursion intuitive. After writing merge-sort and fibonacci functions with relative ease, we turned to writing a method that would return all the subsets of a given array. The solution was elusive and painfully achieved as I suppose are most worthwhile achievements. I was relieved to move on to building constructors and prototypes which to me are much more intuitive.

Our JavaScript curriculum has only just begun. I am refreshed to find that learning a second language ultimately comes with less frustration than learning the first. Concepts of mutability, objects, falsy values, and passing by reference are much more intuitive. Learning a new language is primarily about earning how to express known logic in a given syntax. That much I feel confident in doing.

Tomorrow we will return to another project that we previously completed in Ruby. I look forward to less recursion, less smashing of computers, and more Tic Tac Toe.

Hear all about it here tomorrow!

John")

javascript.stories.create!(title: "One Deep Breath", text: "We have now finished our fifth week at App Academy. Recalling everything that we have done in such a short time seems like a dream. We started only knowing a handful of Ruby methods and since then have managed to both sign users into webpages and build the mechanism that makes that possible from the ground up. I have found myself astonished at how much I have learned in such a short time and excited to see how the rest of the program continues to unfold.

We concluded last week continuing to work on JavaScript. I had the good fortune of working with Anna, one of the three musketeers with whom I share my limited free time in the program. We took our time working through the problems ensuring we had a good understanding of each of the subjects. Some of the more interesting exercises were building our own ‘bind’ method in Javascript and writing a version of the bubble sort algorithm that would prompt a user to compare two values and then run the code. Working with an asynchronous language has lent itself to some unexpected consequences. Taking our time walking through building our own version of a bubble sort was helpful in understanding how callbacks and function execution work in JavaScript.

One of the main reasons I wanted to get into programming was to work in teams to solve challenging problems. Friday was certainly the most enjoyable pair programming experience I have had to date. I enjoy people as much as I enjoy a difficult question, and it was a treat to work with someone who seemed equally as interested in the experience. As I look forward to working in development after the program, I hope that I can continue to find coworkers who share the same enthusiasm for people and problem solving as I do.

Over the next two weeks we will continue learning JavaScript. I have begun reading ‘Effective Javascript’ and we will conclude the week with an exam to test our understanding. So far I feel like I have a good foundation to work with but know that there will be a lot more work ahead of us. Tomorrow we start building web pages that move by building our own version of asteroids. Demo to follow shortly!

Until next time

John")

javascript.stories.create!(title: "JQuery: A Haiku", text: "Click, hover, chosen,
JS, are you behind this?
My event, handled.")

javascript.stories.create!(title: "Slide to the Left", text: "Today we learned to build jQuery plugins. In only two days of knowing jQuery, we are already starting to build our own plugins. We started by creaing a page that had a list of links that when clicked would render information on the page. We acompolished this by adding a click handler to links. We prevented the default action of navigating to a different page. Instead, we added the class “.active” the the item that corresponded with the clicked link and displayed it on the page. We created some css transitions to create the effect of content leaving the page and coming onto the page. It was rewarding to finally see the seamless interchange of information and know the code that made it possible.

When I was first learning HTML a couple years ago, I remember wishing that I knew how to make a custom image slider. Today things finally came full circle as we coded an image slider that would scroll images across the screen. We acccomplished this by creating left and right navigation links and addinc a jQuery click handler. When a link was clicked, the current image received a CSS class that slid it off the page. We did the same for the incoming image, sliding the image into its place. Again, it was refreshing to see the images seamlessly scrolling around the page after managing to complete writing the code.

Tomorrow we have our 5th assessment of the course. It’s time to get a proper night’s rest before proving my understanding of how to write JavaScript!

More to come tomorrow,

John")

javascript.stories.create!(title: "A Week in Review", text: "By the time Friday came around last week, my exhaustion had hit a new low. We just completed Week 6 of App Academy and this last week felt particularly challenging. This was our first full week working in JavaScript and it was full of new content. In 5 days time we managed to build a version of asteroids, learn and implement jQuery, build our own jQuery plugin, and build a simplified twitter clone using AJAX. Oh, and we learned CSS on the side. The week concluded with our 5th of 6 assessments covering JavaScript namespacing and functionality. In the end, my exhaustion was a complete sum of all the parts.

After the relief of passing the exam on Friday morning, we had a lecture covering the key components to making AJAX requests. In some ways, it felt like we were moving backwards. We returned to Rails only to learn that we rely less on the Rails controller for generating views than we had in the past. We used the Rails controller to respond to AJAX requests with JSON. The result is web pages that load without waiting to have compiled all the component parts. It’s powerful and allows for a much more dynamic webpage.

After the lecture I followed my test completion routine by heading to Blue Bottle for an affogato. There are few treats that I love as much as ice cream topped with espresso, and I was happy to have a group of friends this time to share it.

We returned from lunch and spent the second half of our day building a clone of Twitter. Jimmy and I worked together to learn how to target HTML objects on the page, listen for events, and trigger AJAX requests as a result. Even something as simple as ‘Following’ a user was exciting. When a user clicked a button to Follow another user, the button was disabled and the text was changed to ‘following…’ as an AJAX request was submit in the background. Something this simple has some pretty powerful implications and I look forward to exploring them some more this week.

The weekend was spend watching screencasts on BackboneJS and reading Effective Javascript. There is one more week where all the material is relatively new, and then we will be on to working on our final projects. Although there is still a long road ahead, I’m feeling motivated for the next steps.

Hear all about them here!

Until next time,

John")

backbone.stories.create!(title: "The Front of Backbone", text: "In the last week or so we have worked with JavaScript in a variety of capacities. We started simply writing pure JavaScript and using Node as a REPL for evaluating our code. We quickly moved onto jQuery to ensure cross browser compatibility and to access some additional handy methods. While working with jQuery we introduces AJAX so we could dynamically update the content of our webpage. Today was a culmination of sorts as we combined our understanding of manipulating the DOM through JavaScript, making requests to the server, and utilizing JavaScripts object oriented properties to implement BackboneJS. Very quickly we were interacting with our old friend Rails, making server request and seamlessly populating Backbone Models, Collections, and ultimately Views to render content on the client side.

Although today was a challenge, I found it helpful to think of Backbone as replicating Rails on the client side. In many ways, they share the same RESTful design in both their routes and handling of information. Ultimately, both use a router to determine how a request will be handled. Backbone Models represent instances of content much like Rails and Backbone Collections source all the content necessary for a view, much like the Rails Controller.

Despite the similarities, Backbone has some major differences. First, JavaScript (and subsequently Backbone) is asynchronous. While a Rails view will wait until a request has been fulfilled before rendering the view, a Backbone view will render before a request has been complete. The implications of such a difference require us to utilize our understanding of jQuery and the DOM. We are able to create ‘listeners’ on DOM objects that can trigger a page. While the difference is subtle, the result is web pages that feel like they load faster while still functional of providing the same amount of content.

The second major difference is where the content itself lives. Rails lives on the server and in our implementation today was the only part of our stack responsible for making requests to the database. Backbone has no direct access to the database. By namespacing our Rails routes responsible for fulling Backbone request under Api, we implied that requests would return JSON data. Our backbone content could then make CRUD requests to Rails though we still had the benefit of Rails validations.

In all I found it refreshing to be using a familiar object oriented design pattern in a different context. I am confident that the future of my career will see many changes in libraries that implement familiar patterns in a new and creative way.

Here’s to the future, and beyond,

John")

backbone.stories.create!(title: "Tread Lightly", text: "Today was our second day building with BackboneJs. We built a basic RSS manager that would allow users to begin listening to a new RSS feed and display the latest entries, all without leaving a single page. Our landing page had a list of feeds that we were currently listening to. When a a user clicked on a link to a particular RSS feed our page would render entries associated with a particular feed without making a new HTTP request and rendering a new page. The content was populated on the page with some Backbone/jQuery magic by first making a request to our Rails API. If a feed was more than 30 seconds old our feed controller would gather updated content to send to the client. By adding a sync listener to our view we were able to render the associated entries once the request was complete.

To ensure efficiency, any request for a feed would return the associated entries. We overwrote Backbone’s built in parse method to allow us to extract associated feed entries from the JSON response generated by Rails. Our parse method saved associated entries from the JSON response and saved them to an instance variable which we made available to our entries view. We are quickly starting so see the power of using an established library, reading the source code, and making deliberate decisions to overwrite the code when necessary. It is refreshing to be at the point as a developer where reading source code does not feel overwhelming.

In all we are gaining a strong understanding of the best practices for building websites that have the feeling of running lightly without sacrificing functionality. Although the asynchronous aspects of JavaScript was initially unfamiliar, we are starting to see the great advantage that it can bring in a web environment.

Tomorrow we will begin developing with Bootstrap. In reading through the documentation, I am excited by the speed in which we will develop light web pages with sound design and strong cross browser compatibility.

More to follow tomorrow,

John")

backbone.stories.create!(title: "Trello Brain Jello", text: "We are nearing the end of Week 7 of App Academy and readying to build our final projects. In preparation we started building a clone of Trello, a project tracking website with a clean intuitive interface and relatively simple design. Trello makes a great launching point for our final projects as much of the front end design lends itself to features we have been working on in the last few weeks.

To begin today I started working primarily on establishing a connection between my backbone router, collection, and views with my Rails router. It was slow as I worked out some kinks in my understanding of Backbone. Although I made some great progress today, most of the work was behind the scenes and rendered simple html content. Tomorrow we will work toward cleaning up our front end by implementing Boostratp modals and some jQuery UI functionality like dragging, dropping, and sorting. Its a long road until then and I’m hoping to get a good nights rest to solidify everything I learned today.

Onward and Upward,

John")

backbone.stories.create!(title: "One View, Many Parts", text: "Thursday and Friday of last week were spent building out a clone of Trello. After struggling through the first day, I brushed up on my understanding of Backbone and charged into Friday trying to make up for lost time. In the end, I still had not got as far as I wanted to with my Trello Clone, but I still learned a whole lot about Backbone and creating composite views.

As we have been working through our JavaScript and Backbone curriculum we have been introduced to a much more dynamic website experience. Rails simplifies database requests and can dynamically render content onto websites. When it comes to a dynamic website experience, however, Backbone becomes an extremely powerful resource. In building Trello we were introduced to the idea of composite views. For our purposes, creating composite views meant that we were able to render Backbone views within other Backbone Views. This became complicated as we dynamically added and removed views from our page.

Because Backbone allows users to navigate through a website without making GET request to Rails for a new page, it became necessary to add event listeners that would trigger the page to be re-rendered. By adding composite views to our web pages we were requite to explicitly delegate Backbone events. Without doing so we were prone to being left with websites that did not have current content returned from the database. The only way to get the content to appear on the screen was to make a hard refresh of the page. In the end I was left with a much better appreciation for the work that is required to create dynamic website content and look forward to having a shot at it in my final project.

More to come tomorrow,

John")