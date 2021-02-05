# Ruby On Rails
## Ilk yuklenirken 
- check ruby version `ruby -v`
- check rails version `rails -v` if dont have run `gem install rails`
- to create project `rails new [Project Name]` will create a project then go in `cd [Project Name]`
- to run server `rails server` go your **localhost:3000** you will see "Rails default page"
-  For me these configuration were not enough I had to instal yarn `npm instal --global yarn `  (you might have npm already installed ) and also run `rails webpacker:install`
-  Then ready to go do now just rails server and go to your localhost
## Normal akis
- `rails generate controller home index` here we generate home/index mapping . 
See the code (app->view->home->index.erb). In local _host:3000/home/index_ will be triggered. 
- we want to make home/index as default  so **route** need to be configured
  - go to **_config/routes.rb_** you will see that there is `get"home/index"` handler change it to `root 'home#index'`
- instead of `generate` code you can manuly create a controller as well. To add another mapping, In the route.rb folder you should add mapping as `get "about"=> "home#about"`. Then in the Home_controller.rb define about method. Then in view/home create about.html.erb .
  Here what happens ,  [route _get about_] trigger [home_controller _about_ method] that method trigger [view/home about.html.erb].
  **Notice that** method name(about) and view folder name(about.html.erb) must be the same. 
  