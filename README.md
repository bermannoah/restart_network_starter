# Restart Network Ruby + Civic Tech Starter Kit

### Table of Contents
**[1. Who am I?](#who-am-i)**<br>
**[2. Who are you?](#who-are-you)**<br>
**[3. What Are We Going To Do](#what-are-we-going-to-do)**<br>
**[4. What (and why) is Ruby?](#what-and-why-is-ruby)**<br>
**[5. How to Install Ruby](#how-to-install-ruby)**<br>
**[6. What (and why) is Civic Tech?](#what-and-why-is-civic-tech)**<br>
**[7. Project!](#project)**<br>
**[8. How To Use This Repo](#how-to-use-this-repo)**<br>
**[9. Questions? Comments? Something else entirely?](#questions-comments-something-else-entirely)**<br>
**[10. Demo!](#demo)**<br>

## Who am I?

- Noah Berman (noah@wetransfer.com)
- other details etc @ https://noahberman.org
- work for https://wetransfer.com as a backend developer
- not a "traditional developer" - photographer/writer/filmmaker/customer service person, then went to https://turing.io
- do pretty much everything in ruby, a little go, a little swift (?!)

## Who are you?

- what is your name and what is your favourite sandwich (if you have one)
- if you feel like sharing, what's the thing about programming that you're having a lot of fun with right now?
(Doesn't have to be a big thing, it can be ... you really enjoy naming variables or something.)

## What Are We Going To Do
1. Who am I? Who are you?
2. What (and why) is Ruby?
- Let's all install Ruby!
3. What (and why) is Civic Tech?
5. Explore sample project - twitter script - or work on own idea
6. Demo!

## What (and why) is Ruby?

RUBY! Ruby is great. What's nice about ruby is that it gets out of the way and
lets you turn your ideas into code -- odds are if you can think of something
that _should_ be a method, it probably is one.

#### Example

Some languages make you jump through hoops to turn something of one type into
something of another type. Not so with Ruby.

```ruby
>> a = 1
=> 1
>> a.class
=> Fixnum
>> b = a.to_s
=> "1"
>> b.class
=> String
```

This doesn't seem that wild. But Ruby does some truly interesting stuff.
Here's a very boring thing you can do:

```ruby

>> first_word = "Hello"
=> "Hello"
>> puts "#{first_word} World!"
Hello World!

```

String interpolation! Wild. Exciting. Okay, not really. But check this out:

```ruby
>> Time.now.class
=> Time
>> "The time now is #{Time.now}."
=> "The time now is 2017-11-06 21:23:48 +0100."
```

or what about this:

```ruby
>> hash = {"Ruby is" => "great!"}
=> {"Ruby is"=>"great!"}
>> "Here's what I think about Ruby: #{hash}"
=> "Here's what I think about Ruby: {\"Ruby is\"=>\"great!\"}"
```

With a few limitations you can use string interpolation to turn pretty much
anything into a string. In the hash example it even escapes the quotation marks
for you!

## How To Install Ruby

I could talk all day about how fun Ruby can be. But let's actually do some code!

This is where things get a bit tricky since we have a mix of operating systems.
So the best thing to do is to follow the very nice RailsBridge Installfest docs.

Note for the windows users: installing ruby is a bit different on windows.
Happily there's an installer you can download. Once it's on your system and
configured how the tutorial suggests, it _should_ operate about the same as
on mac.

Link: [RailsBridge](http://curriculum.railsbridge.org/installfest/choose_your_operating_system)

Some of the things they tell you to do you'll already have installed, so don't
worry about reinstalling them. For the mac users it's worth pointing out that
while you have ruby preinstalled on your system, it will pick the _system ruby_
and make it very, very annoying to install gems. So running through the install
guide should straighten that out.

The guide will have you use `rvm`, which is a version manager. I use `rbenv`, so
some of the commands I use might look a bit different. You should feel free to
use either. I started with `rvm` (I ran through this exact same installfest!) and
at work everyone uses `rbenv`, so I switched over.

You can probably stop at the "install rails" step. We (probably) won't be using rails today
but feel free to install it and give it a try on your own! It's amazingly powerful.

Bonus:

If you don't have a heroku account, you can follow [RailsBridge's instructions](http://curriculum.railsbridge.org/installfest/create_a_heroku_account) and
create one. It's not necessary but it can be a useful tool, and we might take
a look at how to run a twitter bot using it.

### Let's explore!

- `irb`
- the `.methods` method
- `puts Hello, World!`
- `ruby hello_world.rb`
- [exercisms](http://exercism.io/)
- rewrite an existing restart exercise in ruby
- [more RailsBridge rubydocs](http://curriculum.railsbridge.org/ruby/)
- [the official rubydocs](https://ruby-doc.org/)
- [why's poignant guide](http://poignant.guide/book/chapter-1.html)

_a note about why's poignant guide_

Though the poignant guide is more than a little out of date, it is, I think,
the best way to get yourself _excited_ about programming in a way other
textbooks just can't manage. It seems wacky and a bit silly and goes off
on weird tangents and has jokes that don't make any sense. But why really
_loves_ programming and it'll get in your head. When I'm feeling down or stuff is
tough at work I try to go back and read bits from it. Even if you never write
a line of ruby again after today I think it's really worth your time.

## Gems!

Gems are like node packages or other easily downloadable libraries. They make
your life easier (sometimes) and more irritating (sometimes) but are, all in all,
super great.

I spend a lot of time shouting at [image_vise](https://github.com/WeTransfer/image_vise), a very
clever gem that my lead engineer wrote and I contribute to sometimes.

Generally speaking you can install a gem by running `gem install name-of-the-gem`
but you can also use what's called a Gemfile. There's one in this repo! So let's
practice. First, do this:

`gem install bundler`

If it tells you you need `sudo`, something is wrong with your `$PATH` and we'll
need to fix it first.

Assuming bundler installs okay, take a look at the Gemfile in this repo.

Run `bundle install`. Bundler should pull down a number of gems, sometimes more
than you're expecting - gems have dependencies too, and will need to install those
as well. Great, now you've got the gems we need to do some great stuff.

## What (and why) is Civic Tech?

Civic Tech is a lot of things, but essentially it is the name for the idea that
technology should be used to help people interact better with their government,
and I would expand it to "the world" or even "themselves."

"Data" can seem extremely mysterious but as developers we can write code that
makes it easier (and fun!) for us and others to get a handle on the huge amounts
of info being created in the world around us/them.

Some examples of "Civic Tech" projects and resources:

- [Cloudy With A Chance Of Pain](https://www.cloudywithachanceofpain.com/)
- [Floodwatch](https://ocr.nyc/user-focused-tools/2014/06/15/floodwatch/)
- [Income changes over London bus routes](https://public.tableau.com/profile/george.walker#!/vizhome/Incomedisparityoverbusroutes/HowdoesincomevaryalongLondonbusroutes)
- [Age of buildings in the netherlands](http://code.waag.org/buildings/)
- [18f](https://18f.gov)
- [Edualize](http://edualize.herokuapp.com/)
- [buienradar](https://www.buienradar.nl/)
- [list of public datasets](https://github.com/caesar0301/awesome-public-datasets)
- [list of public apis](https://github.com/toddmotto/public-apis)
- [EU open data portal](https://data.europa.eu/euodp/data/)
- [nice if a little outdated list of NL apis](https://apievangelist.com/2014/03/09/i-am-up-to-34-apis-out-of-the-netherlands/)

Though there are many, many EU data sets a lot of them are in big, clunky XML files
or even CSV spreadsheets or just huge raw JSON things.
So we're going to concern ourselves specifically with
data that is accessible via a REST api.  

The lists above have some great examples, and I encourage you to explore on your own.
I'm limited in my research somewhat by language and by being relatively new to the
EU / NL / ??? civic tech 'scene.'

What interests you? What have you already discovered? Used? Built? Thought about?

## Project!

Let's make a twitter bot! I love twitter bots because they're (1) fun (2) great
for learning all kinds of ruby stuff (3) they let you get your work out in front of
the rest of the world - if you want - quite quickly.

We'll explore the twitter API (via a gem) in a moment. For now though lets talk data!

What you actually want your bot to do is up to you. Here are some APIs I've found
that could be fun to work with. Some require a key, some don't.

- [NS API](https://www.ns.nl/en/travel-information/ns-api) < - trains!
- [Navitia](https://www.navitia.io) < - transport!
- [Citibikes API](http://api.citybik.es/v2/) < - citibikes - looks like there's a station in rotterdam
- [bikewise incident api](https://www.bikewise.org/documentation/api_v2#!/incidents) < - bike accidents, theft, etc
- [haveIbeenpwned](https://haveibeenpwned.com/API/v2) < - was your email in a data breach?
- [the world bank](https://datahelpdesk.worldbank.org/knowledgebase/topics/125589) < - lots of global finance data
- [teleport](https://developers.teleport.org/api/getting_started/) < - quality of life data
- [newsapi](https://newsapi.org/) < - news!
- [nytimes api](https://developer.nytimes.com/) < - news!
- [wit.ai](https://wit.ai/) < - language analysis
- [uk national grid carbon intensity](https://carbon-intensity.github.io/api-definitions/?ruby#carbon-intensity-api-v1-0-0) < - how much junk will the UK power grid put into the air
- [air quality api](https://docs.openaq.org/) < - yep, air quality
- [the guardian api](http://open-platform.theguardian.com/documentation/) < - news!
- [buienradar api](https://www.buienradar.nl/overbuienradar/gratis-weerdata) < - will it rain (yes)
- [wikipedia api](https://www.mediawiki.org/wiki/API:Main_page) < - wikipedia, but an API!

... there are loads more. What can you find?

In terms of implementation: go wild! Some ideas:
- a bot that tweets NS delays coupled with a random news article (to read while you wait)
- scan tweets for mentions of words related to pollution and reply with data from the air quality api
- sentiment analysis (wit.ai or something else?) of tweets in a city matched with teleport quality of life
- tweet bikewise incidents with a #hashtag of the city they're located in
- ...????

You can also do something not necessarily _data related_ but fun! For example:
- [two headlines bot](https://twitter.com/TwoHeadlines)
- [tiny assistant](https://twitter.com/TinyAssistant)
- ...basically anything on Darius Kazemi's [awe inspiringly long list of bots](http://tinysubversions.com/projects/)
- [hydration bot](https://twitter.com/hydratebot)
- [infinite deserts](https://twitter.com/infinitedeserts)
- [census twitter bot thing](https://fivethirtyeight.com/features/introducing-censusamericans-a-twitter-bot-for-america/)
- [how about a bot for a joke nobody will get?](https://twitter.com/adamcurtisbot) < - we might look at my shameful code for this one

### How To Use This Repo

First: create a twitter account if you don't already have one. (If we end up not
wanting to do this, I'll create an account we can use as a group. Hooray for APIs!)
Be sure to attach it to a phone number. (They don't let you into the dev portal
otherwise.)

Yay! Now:

1. Clone down this repo
2. `cd` into it with your command line client of choice
3. Run `bundle install` to pull down the necessary gems.
4. Go to https://apps.twitter.com/ and create an application. 
5. Get your keys and access tokens from the keys-and-access-tokens panel. You might
need to generate the tokens.
6. Create (`touch .env` from the command line) a .env file and copy the variable names from `example.env` to the file. Then add your keys tokens and secrets to the file.

IMPORTANT: Do not commit the file containing these keys to github or anywhere else!

7. Once you have some code you're happy with, run `ruby twitter_script.rb` and watch the fireworks! We'll talk about some testing and
debugging solutions as well, plus how to use faraday to actually make http requests. ([Here are the docs.](https://github.com/lostisland/faraday))
8. If you want to set up your bot to run automatically, we can take a look at this slightly ridiculous [repo](https://github.com/bermannoah/adam-curtis-bot) for my "Adam Curtis Bot" - you'll need a heroku account and rails. (There are other ways to do this, but when I made it this was the quickest.)

### Questions? Comments? Something else entirely?

### DEMO!

links to projects will go here, if you'd like :)

Thanks!
