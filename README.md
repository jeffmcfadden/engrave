# Engrave

No, the world does not need another Ruby blogging engine.

    # Gemfile
    gem 'engrave'
	
    # routes.rb
    mount Engrave::Engine => "/engrave", :as => "engrave_engine"
	
    # Install migrations and run them
    $ rake engrave:install:migrations
    $ rake db:migrate