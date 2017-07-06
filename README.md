# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Setting for Dropbox

This application use Dropbox API to storing pictures with production.
You should follow next settings.
I referenced [this](http://qiita.com/kazuhisa/items/f4db2673ed33b695d101).

0. Register Dropbox.

1. Get API token from [Dropbox setting](https://www.dropbox.com/developers/apps).

   1. Access "Create App".

   2. Choose **Dropbox API** in "Choose an API".

   3. Choose **App folder** in "Choose the type of access you need".

   4. Input your app name in "Choose the type of access you need".

   5. Memorize "App key" and "App secret".

2. Authorize to access to Dropbox.

   1. Install gems with bundler(if yet).
   ```
   $ bundle install --without production
   ```

   2. Run this command.
   ```
   $ rake dropbox:authorize APP_KEY=<your_app_key> APP_SECRET=<your_app_secret> ACCESS_TYPE=dropbox
   ```

   3. Access showed URL and authorize.

   4. Return to console and input "y"

   5. Memorize showed access_token, access_token_secret, and user_id.

3. Set tokens in Dropbox to heroku env
```
$ heroku config:set APP_KEY=<your_app_key>
$ heroku config:set APP_SECRET=<your_app_secret>
$ heroku config:set ACCESS_TOKEN=<your_access_token>
$ heroku config:set ACCESS_TOKEN_SECRET=<your_access_token_secret>
$ heroku config:set USER_ID=<your_user_id>
```

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).
