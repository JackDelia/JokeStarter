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

sonic_screwdriver = User.new(username: "3 Stags", password: "wolf")
sonic_screwdriver.reset_session_token_and_save

chipotle = User.new(username: "Noboru Bitoy", password: "tacostacostacos")
chipotle.reset_session_token_and_save

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
    user_id: lionel.id,
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


Project.create(title: "We're putting a TARDIS into orbit - Really!",
    body: "We're sending a TARDIS into space!

November 23, 2013 is the 50th anniversary of Doctor Who, and we're extremely excited. So excited, in fact, that we almost don't know what to do... almost. Actually, we know exactly what to do: We've built a replica TARDIS and we're sending it into orbit. Yes, really! We're not talking about sticking a little, plastic TARDIS on top of a model rocket and shooting it really high into the sky (although that would be wicked cool). And we're not going to tie a TARDIS to a weather balloon (which, by the way would also be pretty flippin' awesome). No, we're putting a TARDIS into the payload bay of a real, actual, honest-to-goodness, rocket, and launching it into a Low Earth Orbit.

Low Earth Orbit is where satellites need to be to actually 'orbit' the Earth, not just fall back down. So, we're talking about sending this thing, really, really, high... space high. The international space station is in Low Earth Orbit. Seriously. The guys on the International Space Station will be able to look out their windows and say: 'Check out that police call box floating by.'


How far along are we?

Pretty far, actually. The TARDIS is built. That's right. We've completed the satellite. The satellite is constructed from really light weight aluminum (because weight is a huge issue) and it is a scaled-down version of the actual TARDIS. Our satellite is only about 1 foot tall - because again, weight is a major factor. However, the light on top functions (powered by solar cells in the windows.) And that means that when we put this thing in space, there will be a TARDIS with a blinking light orbiting the Earth. SWEET!

But then we thought, what if we put some other stuff inside? So, we did. There is a camera, a GoPro Hero 3, regularly recharged by the solar panels, which will take photos of the Earth from orbit. It's not the Hubble or a spy telescope, but it should give us some pretty sweet pics. A magnetic, passive attitude control system is in place which will keep the TARDIS's camera pointing toward the planet. We initially installed a hard drive, but there are issues with a hard drive operating in zero-gravity, so we've switched to SSDs for memory. The SSDs are ready to be uploaded with information. We felt really dumb about the hard drive thing until we learned that NASA made the same mistake. They put standard hard drives in every computer on the International Space Station, then realized none of them would work in space.

Now all that is left to do is take the TARDIS to the aerospace company that will be carrying it into space. We will pay them for the launch, based on the size and weight of our satellite, and that's it. One TARDIS in orbit. But, we have to pay them. That's why we're here on Kickstarter. Putting satellites in orbit can be expensive.

  If we reach our funding goal, the TARDIS that you see in the video will be the one that we send into space. Now, of course, we'd like to put a full-size TARDIS into orbit, but that's an even more expensive proposition. There is limited physical space inside the rocket, and as we've already mentioned, weight is an issue. If, however, we receive more funds, we can build a bigger TARDIS, possibly even full size.

  What if we get more money?

  We've already said this, but when you're talking about putting stuff into space, your primary concerns are size and weight. The bigger it is, the more space it takes up inside the rocket. The heavier it is, the more thrust you need to get it into space. So, what will we do with more money? Build a bigger TARDIS.

  Every dollar over the $33,000 means that our TARDIS can be a little bit bigger. We could put a full size TARDIS in orbit with $382,000. It's a crazy amount of money, we know, but it's not out of the question if we got a lot of support. And we are talking about a full-size TARDIS... in space...


  Can we really put a satellite into orbit for only $33,000?

  Good question. First, let's just say that we couldn't do it for that price if the TARDIS were the only thing inside the rocket. You may not know this, but rockets are really expensive!

  Our TARDIS will not be the only thing inside the rocket, though. We will be sharing payload space with other satellites which are being put into orbit by universities and research groups and private companies. These satellites are designed to monitor weather patterns, and track migratory animals, and do zero-gravity experiments, you know, really serious stuff that's nowhere near as cool as launching a TARDIS into space. So, we're sharing the cost of the launch. That's why we can do it for that price.

  Backer Rewards

  As if being a part of putting a TARDIS in orbit were not cool enough, we're giving away some pretty nifty rewards, too. See, there will be SSD memory cards inside the TARDIS satellite. And on those cards will be all the information about our backers. That's right. There will be a TARDIS orbiting  the Earth, and inside will be your name, your personal message, and even your photos or videos... In space! How awesome is that?

  Our production company will be filming the entire project for a short, documentary film, and that film will also mention our backers in a special thanks at the end. We will set up a web site where people will be able to watch the film about the orbiting TARDIS. We will also post images taken from the TARDIS itself - pictures from space. The site will also have all of the information that is stored on the TARDIS's SSDs. So any time you like, you can visit the web site and see what's in that TARDIS. Cool, huh?

  How will we do it?

  The first step is building the TARDIS, and that's already been done. We based our construction on the specs from the original show, and used a piece of official Doctor Who merch as a template, even cannibalizing some of the components so we didn't have to make every single piece from scratch. We used light-weight materials to ensure that our finished satellite would be as easy as possible to get into space.

  The second step is putting this blue box into space. That's the tricky part, and we're going to leave that to the Rocket scientists... literally. We're basically just buying a ticket for our satellite to ride into space.  All we have to do is raise the money to pay for our ticket as it were.

That's it. As crazy as it sounds, it's a pretty simply project, really. The TARDIS satellite is finished and ready to fly. Now, we just need your help to make it happen.

Risks and challenges

As you can see, the TARDIS satellite is done, and it is fully functioning, but stuff can happen. Remember when they spent $2,500,000,000 to put the Hubble Space Telescope in orbit and couldn't get the lens to focus? Yeah, so do we. Stuff can happen. We've built our satellite using the simplest components to limit as much as possible the chance that something will go wrong, and we don't anticipate problems, but we have to be up front and say that despite our best efforts it is possible that something might not work properly. Worst case scenario? The antenna does not properly deploy and the satellite cannot transmit images. This would be sad, but remember, there would still be a TARDIS in orbit, and all your names and messages, pics, movies, and music will be in it. And you'll still be able to visit the web site where you'll be able to see all of that information, and know it's up there, orbiting on...

The other area of concern is obviously the launch itself. After all, the whole thing could explode. It has happened, rarely, and even more rarely today, but, things can go wrong. Also, for anyone who has watched and waited for a rocket launch (think about space shuttle missions) sometime there are delays from things like weather, equipment malfunction, electronics issues, etc. that can cause a launch to be delayed or scrubbed for another day. And since we are sharing payload capacity to make this mission affordable, we are subject to the launch manifest, and that too can effect the launch date. It's no different than buying a ticket on a 747. If there are mechanical issues, your flight will be delayed. What we're saying is, things can happen when you're putting a rocket in space, but these launches take place all the time without incident. There are thousands of satellites in the sky, dutifully going about their business, and more and more are added every time we turn around, so it isn't exactly 'risky.'",
    goal: 33000,
    rewards: [
      [1, "JUST KNOWING: That you put a TARDIS in orbit around the Earth. That's pretty cool when you think about it. Whenever you hear something about the TARDIS in space or see something on the news or on the web, you'll be able to say you helped make it happen."],

      [15, "YOUR NAME: (Or any name you choose) will be entered into the TARDIS's hard drive. That name will forever be a part of the TARDIS, and will orbit the Earth. It will also be seen on the web site, and in the documentary film."],

      [25, "YOUR NAME AND MESSAGE: Will be entered into the TARDIS's hard drive. You will be able to put in your name (or any name you choose) along with a message (up to 140 characters - it's a tweet in space!) This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [45, "KEEP CALM AND ORBIT ON t-shirt. This 100% cotton t-shirt is a riff on the 'Keep Calm And Carry On' posters. We've replaced the crown with a silhouette of a police call box. You will also have... YOUR NAME AND MESSAGE: Will be entered into the TARDIS's hard drive. You will be able to put in your name (or any name you choose) along with a message (up to 140 characters - it's a tweet in space!) This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [45, "'KEEP CALM AND ORBIT ON' limited edition poster suitable for framing (of course) 18x24. We've replaced the crown with a silhouette of a police call box. You will also have... YOUR NAME AND MESSAGE: Will be entered into the TARDIS's hard drive. You will be able to put in your name (or any name you choose) along with a message (up to 140 characters - it's a tweet in space!) This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [45, "11x17 blueprint of the TARDIS we used in building it (signed by us) You will also have... YOUR NAME AND MESSAGE: Will be entered into the TARDIS's hard drive. You will be able to put in your name (or any name you choose) along with a message (up to 140 characters - it's a tweet in space!) This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [50, "1 MB OF DATE: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 1 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [70, "KEEP CALM AND ORBIT ON' t-shirt. This 100% cotton t-shirt is a riff on the 'Keep Calm And Carry On' posters. We've replaced the crown with a silhouette of a police call box. You will also have... 1 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 1 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [70, "'KEEP CALM AND ORBIT ON' limited edition poster suitable for framing (of course) 18x24. We've replaced the crown with a silhouette of a police call box. You will also have... 1 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 1 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [70, "11x17 blueprint of the TARDIS we used in building it (signed by us) and suitable for framing. You will also have... 1 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 1 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [85, "2 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 2 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [150, "11x17 blueprint of the TARDIS we used in building it (signed by us) PLUS one of the 'KEEP CALM AND ORBIT ON' shirts, PLUS 2 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 2 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film."],

      [200, "11x17 blueprint of the TARDIS we used in building it (signed by us) PLUS one of the 'KEEP CALM AND ORBIT ON' shirts, PLUS a 'KEEP CALM AND ORBIT ON' limited edition poster, 18x24, PLUS 5 MB OF DATA: Will be entered into the TARDIS's hard drive. You will be able to put in your name or anything else, for that matter, a message, photos, videos, whatever! Your only restriction is that you are limited to 5 MB of memory. This information will also be included on the web site and in the film. NOTE: We reserve the right to omit any text that we deem inappropriate from the web site and film." ]],
    user_id: sonic_screwdriver.id,
    thumbnail_image_url: "https://ksr-ugc.imgix.net/projects/552057/photo-original.jpg?w=1536&h=864&fit=fill&bg=000000&v=1397820113&auto=format&q=92&s=a5b398f1821829e35bbe7f9156718d43",
    main_image_url: "https://ksr-ugc.imgix.net/projects/552057/photo-original.jpg?w=1536&h=864&fit=fill&bg=000000&v=1397820113&auto=format&q=92&s=a5b398f1821829e35bbe7f9156718d43")


Contribution.create(project_id: 5, user_id: 1, amount: 44000)

Update.create(project_id: 5, title: "We've updated our backer reward options",
body: "In response to requests from so many of our backers, we've added some new backer reward options. We have a 18x24 STAY CALM AND ORBIT ON poster, suitable for framing as well as copies of the blue prints we used for the TARDIS's shell. We've also added the option of 2MB of data as well as 5MB of data. Check out the rewards section for details and combinations, and thanks to all who have helped us so far.")

Update.create(project_id: 5, title: "Changing your backer reward selection",
body: "Some have asked about our new backer rewards, and whether its possible to change from one reward to another. The answer is YES... Lets say you'd prefer a poster to a t-shirt, or a copy of the blue prints to the poster... You can go back in and switch.")

Update.create(project_id: 5, title: "How and when to give details about what you want to put in the TARDIS, selecting shirt size, etc.",
body: "We've gotten quite a few messages about this, so we decided to post an update. When we reach our funding goal, Kickstarter will make available to us the tools we will use to collect this information from our backers. In the mean time, just sit tight, let your imagination run wild about what you will put inside, and tell as many people as you can about the project. Together, we can make this a reality.")

Update.create(project_id: 5, title: "Twitter Blitz",
body: "One more thing... We've gotten a massive number of questions about whether we've contacted this person or that person, and the answer is, yes, we've contacted them, but they're all really busy and most haven't noticed our email or tweet. Now, if they ere getting hundreds of tweets, well that they'd probably notice, so how about we try that? Here are a few who actually have their own Twitter accounts... • Colin Baker (The Sixth Doctor, no less) – @sawboneshex • Frazer Hines (the ever-faithful Jamie) – @WhoFrazer • Arthur Darvill – @rattyburvil • James Corden – @jkcorden • John Barrowman – @team_barrowman • John Simm – @john_simm • Noel Clarke – @NoelClarke Now, for the writers and producers: • Steven Moffat – @steven_moffat • Mark Gatiss – @markgatiss • Neil Gaiman – @neilhimself • James Moran – @jamesmoran • Jason Arnopp – @jasonarnopp And not forgetting the musical genius behind the show’s recent hits: • Murray Gold – @murraygold And here’s a selection of prominent British guest stars: • Tracey Ann Obermann (the weeping Cyberman) – @TracyAnnO • Alexander Armstrong (Mr Smith) – @xanderarmstrong • Simon Pegg (y’know…SIMON PEGG) – @simonpegg • Anthony Head (Buffy’s mate) – @anthonyshead • David Walliams (he’s a Little British) – @davidwalliams And finally, these last two aren't particularly active on Twitter, but who knows. • Billie Piper – @billiepiper • Bernard Cribbins – @bernardcribbins")




#Chicken Burrito

Project.create(title: "Graphing the deliciousness of a chicken burrito!",
    body:
"Just how delicious is a chicken burrito from my local Chipotle? I will find & display the answer in a creative presentation!


Risks and challenges

Potential risks include:

An order mixup- I might accidentaly recieve a carnitas or steak filling instead of chicken!

Testing hazard- I might drop the burrito on the floor, failing to successfully consume it.

The results come back inconclusive.

If any of these potential risks occur, I will take full financial responsibility in personally funding the next chicken burrito.

There is also a risk that the Zero G flight might not get funded (I know it's a lot of money!). If your donation is towards this particular cause and the campaign falls short, you will receive a shout out in the Skydive video, as well as another video where I will incorporate an intense, anti-gravity situation.",
    goal: 8,
    rewards: [
      [1, "A completed version of the Deliciousness Graphic in a .PDF file is made available for you either by email or posted on my website."],

      [10, "I'll send you a pretty cool sticker of my logo!"],

      [25, "A pretty cool sticker and a super cool T-shirt! Just let me know your size and I will print it out!"],

      [50, "2 super cool t-shirts! 2 pretty cool stickers! A shout out in my next video! I mean a good shout out, complete with visuals (of whatever you want). Promotion of your project, proposal to your loved one, a jingle, whatever you want!"],

      [100, "Be included in the NEXT DELICIOUSNESS GRAPH. I will include your name/organization, and the score you gave your Chipotle chicken burrito."],

      [500, "We'll have a burrito eating experience over Skype, and I will include it in an upcoming video! It'll be good press for you!"],

      [1000, "I will incorporate your name/organization into the SKYDIVE VIDEO. This is a great opportunity for publicity, as this campaign has been featured on FoxNews.com, CNET, YahooNews, BusinessInsider, LATIMES.com, COMPLEX.com, and many others."],

      [2000, "I will incorporate your name into the ZERO G VIDEO. This has high potential to be the ULTIMATE chicken burrito consuming design experiment of all time. Make your mark in history. Be a part of it."]],

    user_id: chipotle.id,
    thumbnail_image_url: "https://ksr-ugc.imgix.net/assets/001/640/998/f98be79c57ed2a6e74aa086c70be0984_original.jpg?w=680&fit=max&v=1392561192&auto=format&q=92&s=ebba0210d2303c958dd602494b31ce0e",
    main_image_url: "https://ksr-ugc.imgix.net/projects/840860/photo-original.jpg?w=1536&h=864&fit=fill&bg=FFFFFF&v=1397864888&auto=format&q=92&s=bfd533deadf30769321dc05771cde74a")

Contribution.create(user_id: 1, project_id: 6, amount: 1050)

Update.create(project_id: 6, title: "////UPDATE////",
body:"I believed in you. In turn, you believed in me.

These are real responses I received. I'm not making this up. In less than 24 hours, the Burrito Deliciousness Graph project made it to 400% funding! So without further adieu, I present the results of my project!

https://vimeo.com/86165888")


Update.create(project_id: 6, title: "///// HEY! ANOTHER UPDATE! /////",
body:"Alright guys, you are all blowing my mind with your diehard support!

I have one final stretch goal now.

The other night I was thinking, 'How much more delicious would a Chicken Burrito from Chipotle be… if I was plummeting from the heavens?'

That's right, Kickstarter community. I am going to make an infographic detailing just how delicious a chicken burrito is when eaten during a SKYDIVE.")


Update.create(project_id: 6, title: "! ! ! ! ! ! ! ! ! ! ! ! ! U P D A T E ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !",
body:"Alright you guys.

Due to HIGH demand.. a new stretch goal has been added:

I'm going to try to get into another airplane. A ZERO GRAVITY AIRPLANE.

You want to see the ultimate burrito deliciousness graph? Well here's how much it's going to cost me.

$6,000-

$5500 for the flight, $500 for personal recording equipment, Reward Merch, and Kickstarter's cut of the profit.

TIME FRAME

The Skydive will be happening near the end of March.

The Zero G plane is scheduled for takeoff in Chicago on June 7th, 2014.")

40.times do
  randomUser = User.new(username: Faker::Internet.user_name, password: "PASSWORD")
  randomUser.reset_session_token_and_save
end

200.times do |project|
  Comment.create(user_id: rand(40)+1, project_id: rand(6)+1, body: Faker::Hipster.sentence)
end

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
