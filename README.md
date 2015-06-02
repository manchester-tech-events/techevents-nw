# techevents-nw
You need to have ruby and bundler installed.

```
bundle install
```

to install dependencies

```
rake run
```

to run the app on `localhost:3000`

edit `site.rb` to add new routes
`layout.erb` is the template, put your content into your page .erb (see the calendar route for an example)

Using semantic-ui for the UI framework

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
