# README

This is a simple Sinatra app used to scrape Pinterest with Nokogiri to display images of hairstyles, kittens and eye make up. 
These are things I view often but you can change `@url` variables to scrape Pinterest pages for other things.

** You will need to install Ruby **

* Clone the repository
```
git clone https://github.com/Rosa-Fox/pinterest-scrape.git
```

* `cd` into the `pinterest-scrape` repo. 

* Make sure you have Sinatra, Nokogiri and Open-uri gems installed:

```
gem install sinatra
```
```
gem install nokogiri
```
```
gem install open-uri
```

* Ensure you are in the root directory of `pinterest-scrape` and run the command `ruby app.rb` to boot the local server.

* Within your browser navigate to `localhost:4567`
