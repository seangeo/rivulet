# Rivulet

Rivulet is a RSS aggregator in the style of a River of News.

Rivulet is a single user aggregator, because everyone should
have their own aggregator and own their own feed list. That's
the way the World Wide Web was meant to work.

The idea is that this will at least contain instructions for
setting up your own instance of Rivulet on Heroku, at least,
hopefully that will be fully automated.

## Questions...

### Why are you building this in 2012? RSS is Dead.

Yeah maybe. I did a lot of [interesting stuff](http://winnowtag.org/) with RSS from
'07 - '10, before it "died" so maybe I still have unfinished business. But more importantly,
I sort of stopped using RSS myself, due to it's apparent death. I started relying on
Twitter as my sources of news. I then realised that I actually miss a lot because of
the low signal to noise ratio on Twitter, e.g. I'd find a blog that I liked, follow
the author on Twitter, and then notice I missed a bunch of interesting posts because
my timeline was full of people doing the usual Twitter thing: complaining, flaming
and trolling (ok it's not that bad).

So I decided I really want to separate the social interactions of Twitter from news
and blog reading. But I do really like the timeline aspects of Twitter, and hate
the old email style metaphor that most RSS readers use. I also started reading
Dave Winer's work on RSS and [Rivers of News](http://river2.newsriver.org/). He's released
a new implementation of his ideas that runs on his OPML Editor software, he even provides
instructions for setting it up on EC2. But I'd like a Ruby on Rails version, that runs on
Heroku (because it's free). It also gives me a side project I can work on that lets me build
a Rails app exactly how I want (so if you read the code, expect obsession over architecture
and test isolation).

Anyway, this is sounding more like a blog post than a README... time to stop. This will
probably get replaced with instructions on how to set things up.

