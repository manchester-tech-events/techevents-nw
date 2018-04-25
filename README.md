# techevents-nw
install git on your machine
http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/

Clone the repo using the https url to the right ---> 
```
git clone https://github.com/manchester-tech-events/techevents-nw.git
```
NOTE: this will create a newfolder with all this content in it.

Install rvm:
https://rvm.io/rvm/install

Install ruby 2.2.0
```
rvm install 2.2.0
```

Use 2.2.0
```
rvm use 2.2.0
```

Install Bundler
```
gem install bundler
```

You need to have ruby and bundler installed.

to install dependencies run:
```
bundle install
```

to start the app run:
```
rake run
```

Make a note of the port used and point your browser to `localhost:3000` (replace 3000 with the port mentioned before)

edit `site.rb` to add new routes
`layout.erb` is the template, put your content into your page .erb (see the calendar route for an example)

Using semantic-ui for the UI framework

## when you're ready to commit
just
```
rake git m='commit message'
```
And GitHub will deploy your changes to heroku and be live on technw.uk within a couple of minutes


# How to start your own!
 - start a slack group
 - invite a load of people
 - Register your domain
 - create a heroku application
 - in settings add your domain
 - fork this git repo
 - edit the circle.yml to be your heroku app
 - edit the .json files in the data folder (probably just a [] for now)
 - get a circle ci account linked to your github
 - follow your new forked project in circle
 - edit project settings and play with the heroku deployment.
 - cirlce should now continuosly deply to your heroku app
 - edit your DNS so that the * CNAME points to your heroku app
 - add content to your site!
