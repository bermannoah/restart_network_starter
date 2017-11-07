# Restart Network Ruby + Civic Tech Starter Kit



## What Are We Going To Do
- 1. Who am I? Who are you?
- 2. What (and why) is Ruby?
  - Let's all install Ruby! 
- 3. What (and why) is Civic Tech?
- 5. Civic tech / open source research (what projects or APIs interest you?)
- 6. Explore sample project - twitter script - or work on own idea
- 7. Demo!

## Who am I?

- Noah Berman (noah@wetransfer.com)
- other details etc @ https://noahberman.org
- work for https://wetransfer.com as a junior backend developer
- not a "traditional developer" - photographer/writer/filmmaker/customer service person, then went to https://turing.io 
- do pretty much everything in ruby, a little go, a little swift (?!)

## Who are you?

- what is your name and what is your favourite sandwich (if you have one)
- if you feel like sharing, what's the thing about programming that you're having a lot of fun with right now?
(Doesn't have to be a big thing, it can be ... you really enjoy naming variables or something.)

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

This doesn't seem that mindboggling. But Ruby does some truly interesting stuff.
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
=> "The time now is 2017-11-07 21:23:48 +0100."
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

## Let's Just Install It

I could talk all day about how fun Ruby can be. But let's actually do some code!


### How To Use This

1. Clone down this repo 
2. `cd` into it with your command line client of choice
3. Run `bundle install` to pull down a couple of necessary gems.
4. Go to https://dev.twitter.com and create an application. 
5. Get your keys and access tokens from the keys-and-access-tokens panel. You might
need to generate the tokens.
6. Create (`touch .env` from the command line) a .env file and copy the variable names from `example.env` to the file. Then add your keys tokens and secrets to the file. 

IMPORTANT: Do not commit the file containing these keys to github or anywhere else! 
