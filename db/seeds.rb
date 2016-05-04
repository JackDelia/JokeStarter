# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jack = User.new(username: "Jack", password: "terraadnihilumvenire")
jack.reset_session_token_and_save

potato_master = User.new(username: "Zack Danger Brown", password: "potato")
potato_master.reset_session_token_and_save

the_pug = User.new(username: "Kevin Broccoli", password: "pugs")
the_pug.reset_session_token_and_save

lionel = User.new(username: "Hungry Castle", password: "lionel")
lionel.reset_session_token_and_save

firefly_reference_here = User.new(username: "Kurt Braunohler", password: "thesky")
firefly_reference_here.reset_session_token_and_save

guest = User.new(username: "Guest", password: "gloriainexcelsiusdiscordia")
guest.reset_session_token_and_save


#Potato Salad

Project.create(title: "Potato Salad",
  body: "Basically I'm just making potato salad. I haven't decided what kind yet.


  Risks and challenges

It might not be that good. It's my first potato salad.",
  goal: 10,
  rewards: [
    [1, "With your help, we'll be on our way to a successful potato salad. You will get a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [2, "Receive a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [3, "Receive a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [5, "DELUXE PACKAGE: Choose a potato-salad-appropriate ingredient to add to the potato salad, receive a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [10, "PLATINUM LEVEL: Hang out in the kitchen with me while I make the potato salad, choose a potato-salad-appropriate ingredient to add to the potato salad, receive a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [20, "POTATO MADNESS: Receive a potato-salad themed haiku written by me, your name carved into a potato that will be used in the potato salad, a signed jar of mayonnaise, the potato salad recipe, hang out in the kitchen with me while I make the potato salad, choose a potato-salad-appropriate ingredient to add to the potato salad, receive a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [25, "THE HAT: Receive a potato-salad themed hat along with a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [35, "THE HOMAGE T-SHIRT: Receive a limited edition t-shirt designed and printed by Columbus, Ohio t-shirt company Homage (http://www.homage.com). Also receive a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."],
    [50, "POTATO SALADS OF THE WORLD: Receive a recipe book with potato salad recipes inspired by each country where we have a backer along with a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad. The recipe book will have a dedication page with the name of each of our backers."],
    [110, "THE PLATINUM POTATO: Receive the recipe book, the shirt and the hat along with a bite of the potato salad, a photo of me making the potato salad, a 'thank you' posted to our website and I will say your name out loud while making the potato salad."]],
  user_id: potato_master.id,
  thumbnail_image_url: "http://homecookingmemories.com/wp-content/uploads/2011/06/Bacon-Cheddar-Potato-Salad-4.jpg",
  main_image_url: "https://ksr-ugc.imgix.net/projects/1070272/photo-original.jpg?w=1536&h=864&fit=fill&bg=FEFEFE&v=1405003988&auto=format&q=92&s=1403a96b62c91b4cfbed175d4ed75cff")

Contribution.create(project_id: 1, user_id: potato_master.id, amount: 55492)

Update.create(project_id: 1, title: "UPDATE: WE DID IT",
body: "Stretch Goals:

$35 - I will make 4x as much Potato Salad. I know $40 isn't 4x $10, but you guys have earned it.

$75 - Pizza Party!

$100 - I will try two different Potato Salad recipes.")


Update.create(project_id: 1, title: "UPDATE #2: ALL THE POTATO THAT'S FIT TO PRINT",
body: "We made the news. Let's keep up the good work! New stretch goals coming soon!

http://www.cnet.com/news/guys-kickstarter-dream-making-potato-salad-possibly-with-dill/")


Update.create(project_id: 1, title: "UPDATE #3: WOW YOU GUYS",
body: "We're making a lot of great progress. I think it's time for us to think about getting hats made. I added a new donor level for people who want hats. For those who are interested the hats could look like this: http://www.zazzle.com/i_love_potato_salad_mesh_hat-148005376484063142

Stretch goals:

$250 - Better mayonnaise (from the natural foods section)

$300 - Call a chef to get a better recipe

$350 - Make way more potato salad and probably do a third recipe.")

Update.create(project_id: 1, title: "WE MADE THE NEWS!",
body: "http://www.abc6onyourside.com/news/features/top-stories/stories/mans-potato-salad-plea-takes-off-kickstarter-33010.shtml")


Update.create(project_id: 1, title: "NEW STRETCH GOALS:",
body: "$1000: I'll do a live stream of the potato salad making

$1200: I'll pay someone to film a thank-you video for all of my backers!")


Update.create(project_id: 1, title: "A BIG STRETCH GOAL:",
body: "We're really tearing through these stretch goals. I honestly don't know what is realistic anymore. So, I thought maybe we try to double the current number?

$3000: My kitchen is too small! I will rent out a party hall and invite the whole internet to the potato salad party (only $10 and above will be allowed in the kitchen)! The internet loves potato salad! Let's show them that potato salad loves the internet!!")



#Puglet

Project.create(title: "Pug-let: The First Ever All-Pug Production of Hamlet",
  body: "For years I've dreamed of mounting one of Shakespeare's most glorious works with nature's most glorious creation:  The Pug.

This will be the first-ever (that I'm aware of) all-pug production of 'Hamlet.'  The actors will be pugs--even Gertrude.

It will be an amazing theatrical event.  Please help us bring it to life.

*If the project is fully funded, we can film it so people who can't travel to see the show can still receive a link to view the production in lieu of an actual ticket.

Risks and challenges

Risks:

- Keeping the pugs happy.
- Feeding the pugs.
- Finding pugs who don't mind being a part of a five-hour play.

Solutions:

- I love pugs.
- We'll use the money for food.
- We may have to let them nap onstage.",
  goal: 5000,
  rewards: [
    [10, "A ticket to the production once it is mounted."],
    [20, "Two tickets to the production and the chance to pet all the pugs."],
    [100, "Two tickets, a chance to pet all the pugs, and a video message from the pug playing Hamlet."],
    [200, "Two tickets, a chance to pet all the pugs, and the ability to cast one pug in the role of your choice (Puglet and Ophelia not available.)"],
    [500, "Five tickets to the show and you get to hug the pug playing Puglet."],
    [1000, "Ten tickets to the production, the chance to meet and play with all the pugs, and the director will personally cook you spaghetti."],
    [5000, "Twenty tickets to the production, the chance to meet and play with all the pugs, the director will make you a spaghetti dinner, and you'll have the only walk-on role in the show. You'll be a human among pugs!"]],
  user_id: lionel.id,
  thumbnail_image_url: "http://theshakespearestandard.com/wp-content/uploads/2015/02/halloween-pug-shakespeare.jpg",
  main_image_url: "https://ksr-ugc.imgix.net/projects/1082803/photo-original.jpg?w=1536&h=864&fit=fill&bg=84858A&v=1404768868&auto=format&q=92&s=0834eb2136c9fcee650ff1288b1c0e78")

Contribution.create(project_id: 2, user_id: 1, amount: 4400)

Update.create(project_id: 2, title: "Our First Backer!",
body: "In honor of our first backer, I will find a pug and dance with it. Three more backers and I'll post a photo.")


Update.create(project_id: 2, title: "10th of the Way",
body: "As Hamlet says to the players...'I really love pugs, you guys.'")


Update.create(project_id: 2, title: "Stream It",
body: "For those who can't actually fly to see puglet, we're willing to give anybody who donates enough to get a ticket a link to watch the show stream.")


Update.create(project_id: 2, title: "Birthday",
body: "My birthday is Saturday! ...But remember, Pug Day is every day.")


Update.create(project_id: 2, title: "Pug Life",
body: "'Alas poor Pug-rick, I knew him well.'")


Update.create(project_id: 2, title: "Beware the Ides of--Wait, That's Puglius Caesar",
 body: "'Et tu, Puglet?'")


Update.create(project_id: 2, title: "Math",
body: "Puglet Math

If all 147 backers donate an extra $19.63, Puglet will be funded instantly.

And all pugs will rejoice.")


Update.create(project_id: 2, title: "3 Days",
body: "Can

We

Do

It")


#Lionel Richie


Project.create(title: "Lionel Richie's Head | Bestival 2013",
    body: "
    Why do we need your help?

To get Lionel looking like he did 30 years ago in inflatable style is no cheap trick. Achieving a face shape is one thing but adding nose, lips, cheekbones, colors, textures etc. increases the production cost even more. We want Lionel Richie’s Head looking his best from all sides so inflatable experts Dropscom have promised to take care of Lionel's look. Hopefully you, me and the rest of the Kickstarter community can take care of the rest.

A good looking Lionel Richie Head at a respectable height (3m) will cost us $4,900. This includes the internal turbines to keep his head up, internal sandbags to keep his head down and $1,000 for overnight Bestival security (aka Head Guards). The cost of creating and shipping the rewards for our backers is also included here.


The Stretch Goal

We hope with the possible success of raising the money to make a 3m inflatable sculpture, that we also reach our additionally intended 'Stretch Goal' of £10k. This money will be used to make Lionel Richie’s Head bigger (6m). Making it bigger allows us to create a portal that will let Bestivalers go inside Lionel Richie’s Head. We know $10,000 is a lot but the Clumsy Smurf balloon cost $130,000. Just saying.


The Experience

This will be a fully immersive, slightly surreal and very personal experience. As people enter one at a time, they will discover at the core of Lionel’s Head lies a telephone. When a person answers the phone, they hear 'Hello, is it me you’re looking for?'

 A good thing about an Inflatable Lionel Richie Head is that it packs and travels well. Once we succeed in bringing it to Bestival the dream is for Lionel Richie’s Head to pop up and say 'Hello' in countries all over the world.


The Team

Hungry Castle makes public art for planet earth. Based in Barcelona, the collaborative of Dave Glass and Kill Cooper creates large-scale works inspired by internet pop culture. That's some Cool Shit right there. Collaborating with artist Alex Sans Massó and Tommaso Gervasini from inflatable manufacturers dropscom, we’ve spent the last 6 months creating a Lionel Richie Head that’s worthy of appearing at Bestival’s 10th Birthday Bash on the 5th of September 2013.


Want to help but can't donate?

Just spread the word round your (hopefully wealthy) community by broadcasting this Kickstarter campaign through Facebook, Twitter and email. Please do this as often as you can. Lionel Richie’s Head is full of gratitude!


Thanks for your support
Love Lionel Richie’s Head


Risks and challenges

Having already failed at making a giant Lionel Richie Head once before, we’re fully aware how difficult it is to convince people to actually fund a project like this. However a music festival is the one opportunity where literally anything goes. And Bestival is much more than your average music festival. The shear determination of Bestivalers to celebrate, music, culture and these sort of odd outdoor happenings is something we greatly love and admire. It’s why we believe they will help us make it. Jeez, if you've read this far you're probably the type to help us too. Thanks.",
    goal: 4900,
    rewards: [
      [3, "Lionel Richie's Head VIP access"],

      [9, "Lionel Richie Head Paper Mask."],

      [29, "Lionel Richie Head Tee Shirt."],

      [49, "Lionel Richie Head Hat."],

      [99, "Lionel Richie Head Pack. Includes Lionel Richie Head Tee Shirt, Lionel Richie Head Hat and an original Lionel Richie Record. Oooh la la!"],

      [300, "Premium Bestival ticket with exclusive backstage camping access, better loos in showers and the chance to bump into the artists who are playing at the Festival."],

      [400, "Premium Bestival ticket with exclusive backstage camping access, better loos in showers and the chance to bump into the artists who are playing at the Festival + A weekend pass for Josie da Banks amazing VIP Artist Bar, the Lucky Cat.

+ Afternoon Tea in Lionel Richie's Head. You and a friend will be served delectable Rich Tea biscuits and tea prepared in a Lionel Richie Tea Set to ensure an authentically memorable experience."],

      [700, "One of a kind Lionel Richie's Head Bust by artist Alex Sans Massó. Unlike the blind girl in the Hello video, Alex observed hundreds of photos of Lionel Richie from all angles to create a sculptural portrait that’s proportional to his real life head. It is sculpted with a high-quality refractory clay, kiln-fired, hand painted and will make the perfect gift for your home + Original Lionel Richie 12 Inch record of his UK No 1 single Hello from 1984."],

      [1000, "Pair of Premium Bestival tickets with exclusive backstage camping access, better loos in showers and the chance to bump into the artists who are playing at the Festival + 2 weekend passes for Josie da Banks amazing VIP Artist Bar, the Lucky Cat + Glamping in Lionel Richie's Head. A chance for and your partner to stay overnight in Lionel Richie's Head for 1 x night complete with flooring and cushions to make it extra cosy."]],
    user_id: jack.id,
    thumbnail_image_url: "https://ksr-ugc.imgix.net/assets/000/645/585/06af928ce1aaaabd5952743254bd82a7_original.jpg?w=680&fit=max&v=1370370794&auto=format&q=92&s=10b6d5dc5df715effab91b7efcf23a81",
    main_image_url: "https://ksr-ugc.imgix.net/projects/447940/photo-original.jpg?w=1536&h=864&fit=fill&bg=000000&v=1397809077&auto=format&q=92&s=e652da9ee7c5136f79e22d4c6fd45313")

Contribution.create(project_id: 3, user_id: 1, amount: 8044)


Update.create(project_id: 3, title: "HELLO, WE DID IT!",
body: "Thank you so much for backing and believing in this mad idea. Because of you we're officially bringing Lionel Richie’s Head to Bestival. You’re Awesome and now you can decide how big it gets and how far it goes?

Making it bigger means you can go into his head and take his phone call. This is our big goal and with just 12 days left we’re going for it! So please continue to share the project and tell your friends that now is the time to pledge. Wherever you are in the world, we want to bring Lionel Richie’s Head to you. See you inside!

Love & gratitude 
Dave, Kill & Lionel ")


Update.create(project_id: 3, title: "HOLD YOUR HEAD UP HIGH!",
body: "To the greatest backers and friends on the planet

Your shares and pledges have filled Lionel Richie's Head with sincere gratitude. You guys are the best and we can't wait to share this journey with you. It's hard to express how truly thankful we are so we'll let Lionel's lyrics do it for us. Sing along now!

Cause you know just what to say
And you know just what to do
And I want to tell you so much,
I love you.

Thanks again
Dave, Kill & Lionel")


Update.create(project_id: 3, title: "What people say about Lionel Richie’s Head?",
body: "A grande tête to compete with any festival big top - The Guardian

A surreal experience par excellence - It's Nice That

The best JokeStarter project of all time - Cultso

Hilarious larger than life tribute - Cool Hunting

A very noble initiative from Hungry Castle - Vice

One of the funniest things I've seen on JokeStarter - USA TODAY")




#Take My Love, Take My Land...

Project.create(title: "Kurt Braunohler's Cloud Project",
    body: "Skywriting is crazy. We’re forcing clouds to say things. That’s inherently funny. How great would it be to look up one day and there’s a message in the sky, for no other reason other than itself. It’s not trying to sell you anything, it’s not trying to tell you something. It’s just there.

I got some quotes from a skywriter on how much it would cost to have him spell out some jokes in the sky over Los Angeles. Here are the options: for a 10-15 character message – it’s about $4,000. For a running joke of up to 5 lines at 20 characters each – that’s around $10,000. So it depends on how much we raise. Please help me pull of this incredibly idiotic stunt. And I need your help to choose what message we should put in the sky. Everyone who donates gets to vote. See below for some options on what we can write.

But first, a little more on WHY:

I think we can all agree that life is pretty bleak place to be a lot of the time. Often you might even think, “Who thought this was a good idea to begin with!?” (God – what a jerk.) But I think that if there’s a way we can, just for a fleeting moment, give strangers an unexpected gift of absurdity, then I think we can make the world a slightly better place.

Up until this point, I’ve been attempting to do this by going into bookstores and signing dedications from the “author” and putting them back on the shelf (“Jive Hustler! – Clive Cussler”). Or by buying greeting cards, taking them home, altering them with new endings and then taking them back and putting them back on the shelf. You might have seen some of my greeting card project online.

But with these techniques I’m maybe affecting 1 or 2 people. I want to expand the audience. So

Here’s the details:

$4,000

This is done by one plane, using cool acrobatics to spell out the message. This is the “classic” skywriting. I could do 1 of these phrases – pick your favorite!

“How do I land?”

“Clouds 4 EVA”

“OMG I’m flying!”

“Tweet me bro!”

“God’s Fartin’!”

$10,000

This uses 5 planes to spell out the message in a “dot matrix” style of printing. I could do either of these “jokes” – they would play out in real time like a real conversation – pick your favorite!

-Knock knock

-Who’s there?

-Me

-Me who?

-Clouds!

Or

-Hey man.

-Hey.

-What’s up?

-Skywriting.

-Oh. Sorry. I forgot.

And thanks to JohnVH Photography for the photo of the plane.

Please donate some money today! Together we can insert absurdity into strangers’ lives and (hopefully) make the world a better place.

Risks and challenges

The risks and challenges of this project is just me being able to use the phone.

As long as I have the money, and can get to a phone to call the skywriting guy, we can get this done.

I GUARANTEE IT!",
    goal: 4000,
    rewards: [
      [10, "I'll tweet a joke on twitter just for you. With your twitter handle tagged at the end."],

      [25, "You get a 2 free tickets to Hot Tub w/ Kurt and Kristen at the Virgil, in Los Angeles, CA"],

      [50, "You get a framed photo of the skywriting, with a personal thank you signed on the back."],

      [100, "You get the framed photo of the skywriting PLUS You get 2 free tickets to Hot Tub w/ Kurt and Kristen at the Virgil, in Los Angeles, CA.
PLUS
A copy of my forthcoming album on Kill Rock Star Records
PLUS
I'll mail you a Greeting Card Project card."],

      [1000, "You get everything in the $100, but I'll also come to where you live and serve as designated driver for you for a full night. And I'll even pay for dinner."],

      [4000, "I'll marry you."]],

    user_id: firefly_reference_here.id,
    thumbnail_image_url: "http://pesn.com/2014/02/09/9602438_Chemtrail-sky-writing-could-prove-theyre-not-contrails/Chemtrails-question-300x204_rd.jpg",
    main_image_url: "https://ksr-ugc.imgix.net/projects/435911/photo-original.jpg?w=1536&h=864&fit=fill&bg=000000&v=1397807790&auto=format&q=92&s=9585c00e4d73e7079d46b82533417150")

Contribution.create(project_id: 4, user_id: 1, amount: 1700)

Project.create(title: "Second",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")

Project.create(title: "phoned-in",
  body: "Lorem",
  goal: 1000000,
  rewards:[
    [1, "urbf"],
    [2, "ubvg"],
    [3, "ufurbf"]
  ],
  user_id: jack.id,
  thumbnail_image_url: "https://usercontent2.hubstatic.com/572751_f520.jpg",
  main_image_url: "https://usercontent2.hubstatic.com/572751_f520.jpg")


Project.create(title: "More",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")



Project.create(title: "This one will show'em",
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
    eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
     pariatur. Excepteur sint occaecat cupidatat non proident,
     sunt in culpa qui officia deserunt mollit anim id est laborum.",
  goal: 25,
  rewards: [
    [1, "something"],
    [20, "something else"]],
  user_id: jack.id,
  thumbnail_image_url: "http://www.pbh2.com/wordpress/wp-content/uploads/2014/03/practical-jokes.jpg",
  main_image_url: "http://www.pbh2.com/wordpress/wp-content/uploads/2014/03/practical-jokes.jpg")


Project.create(title: "Second V2",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")


Project.create(title: "Second V3",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")


Project.create(title: "Second V4",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")
