Install Ruby (type in the command line)
*   ```brew install ruby```
*   ```ruby -v```		(to make sure you have installed it)

Install Rails
*   ```gem install rails```
*   ```rails -v```

Then clone the repository
*   ```git clone git@github.com:lhurt51/phacil-e-pharm.git```

Next set up env
*   ```cd phacil-e-pharm/```
*   ```bundle install```

Then run the server
*   ```rails s```
*   Go to this url: ```http://localhost:3000/```

Rules for working on this App!

* NEVER work off master, always create a new branch!
* Never merge your own branch to master, It will be reviewed for merge conflicts!
* Use linter-ruby & linter-erb as your syntax guides
