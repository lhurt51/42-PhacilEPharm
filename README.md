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
*	```git checkout -b (Your branch name)``` (protects the master branch)
*	always push to your branch ```git push origin (Your branch name)```

Then run the server
*   ```rails s```
*   Go to this url: ```http://localhost:3000/```

To add/commit/push to your branch
*	```git add .```
*	```git commit -m "(Your commit msg... make it relevant)"```
*	```git push origin (Your branch name)```

To make a PR
*	Make sure everything is pushed on your branch
*	Go to ```https://github.com/lhurt51/phacil-e-pharm```
*	You should see you branch name at the top with a green ```compare & pull request``` click the button
*	Leave a nice message on what u have accomplished with your PR.
*	Then click ```create pull request```
*	DO NOT CLICK ```merge pull request```!!!!!!!
*	create a new branch and continue working

Rules for working on this App!

* NEVER work off master, always create a new branch!
* Never merge your own branch to master, It will be reviewed for merge conflicts!
* Use linter-ruby & linter-erb as your syntax guides

Some useful sources
*	```https://launchschool.com/blog/integrating-rails-and-bootstrap-part-1```
*	```https://betterexplained.com/articles/intermediate-rails-understanding-models-views-and-controllers/```
*	```http://guides.rubyonrails.org/association_basics.html```
