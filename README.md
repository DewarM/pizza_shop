# Pizza Shop

## Local
`RACK_ENV=development ruby pizza_controller.rb`

## Heroku local
`RACK_ENV=production heroku local`

Should also contain `.env` is same level as `pizza_controller.rb`. This should contain a `DATABASE_URL` config setting. See [Heroku](https://devcenter.heroku.com/articles/heroku-local#set-up-your-local-environment-variables) for more details.

## Heroku deploy
`git push heroku master`

## Live @
https://immense-island-10964.herokuapp.com/pizzas
