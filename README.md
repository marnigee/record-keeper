# Logikcull Take Home Coding Assignment

## Introduction

I had a great time working on this app!

Since part of this exercise was for you to get a better sense of how I work, I'll go ahead and share the Trello board I used to organize this project: https://trello.com/b/2PoQuXXY/logikcull-code-take-home-coding-assignment.

I decided to jump ahead into recent versions of Rails 5.0.2 and Ruby 2.4 (I currently work with a codebase in the older Rails 4.1 and Ruby 2.1). That slowed me down a bit, but it was nice to take a closer look at all the shiny new toys I'd been hearing about.

I have to admit that I bit off more than I could chew in my planning so I had to scale it back a bit. I also underestimated the front-end work — getting bootstrap set up and things looking halfway decent on the front end took quite a bit longer than I thought.

So I didn't get to everything.

Oh well...there's always a next sprint. :-)

## Dependencies

You will need:

* Ruby (2.4 or greater)
* Rails (5.0.2 or greater)
* ElasticSearch

## Install ElasticSearch

(source of these installation instructions: https://www.sitepoint.com/full-text-search-rails-elasticsearch/)

### Install for Ubuntu and Mac

#### Ubuntu

Go to [elasticsearch.org/download](http://www.elasticsearch.org/download/) and download the **DEB** file. Once the file is local, type:

```
$ sudo dpkg -i elasticsearch-[version].deb
```

#### Mac

If you’re on a Mac, Homebrew makes it easy:

```
$ brew install elasticsearch
```

#### Validate Installation

Open this url: [http://localhost:9200](http://localhost:9200/) and you’ll see ElasticSearch respond like so:

```
{
  "status" : 200,
  "name" : "Anvil",
  "version" : {
    "number" : "1.2.1",
    "build_hash" : "6c95b759f9e7ef0f8e17f77d850da43ce8a4b364",
    "build_timestamp" : "2014-06-03T15:02:52Z",
    "build_snapshot" : false,
    "lucene_version" : "4.8"
  },
  "tagline" : "You Know, for Search"
}
```

## Setup

Install the dependencies:

```bash
$ gem install bundler # if you don't have it
$ bundle install
$ brew services start elasticsearch
$ rails s
```

## Tests

To test the app, run the following command:

```bash
$ rake test
```

## Screenshots

To run the app, visit http://localhost:3000/albums.

Phone layout:

![record-keeper-phone](/Users/mgoltsman/Documents/Marni/screenshots/record-keeper-phone.png)


Desktop Layouts:

![record-keeper-new](/Users/mgoltsman/Documents/Marni/screenshots/record-keeper-new.png)


![record-keeper-desktop](/Users/mgoltsman/Documents/Marni/screenshots/record-keeper-desktop.png)
