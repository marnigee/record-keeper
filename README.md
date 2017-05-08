# Record Keeper App

## Introduction

This is Phase I of an app for record collectors.

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

To run the app, visit http://localhost:3000/albums.

## Tests

To test the app, run the following command:

```bash
$ rake test
```
