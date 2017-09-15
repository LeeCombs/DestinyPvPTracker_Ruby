# Destiny PvP Tracker

## The plan

To fetch and displays basic Destiny character PvP information, and to allow comparison between accounts.

You can see it while it's developed here: https://dry-temple-50978.herokuapp.com/

As this was created as a Ruby on Rails learning project, the aesthetics of the site may be a tad rough.

## Deploying locally or on Heroku

Clone the repo to your folder

Set a Destiny API key as an ENV var named "DESTINY_API_KEY"
Or, in the config folder, create an 'application.yml' file and store the API key as DESTINY_API_KEY: "KEYHERE"

Open cmd and run the following:
```
> bundle install
> rails db:migrate
> rails db:seed
> rails s
```

Then go to localhost:3000 and test it out.


## Example

To be filled out once created