# Engrave

No, the world does not really need yet another Ruby blogging engine.

## Installation

    # Gemfile
    gem 'engrave'
    
    # Don't forget
    $ bundle install

    # Setup the DB	
    $ rake engrave_engine:install:migrations
    $ rake db:migrate
	
    # Create a Post
    > Page.new( { :name => "First Page", :body => "Here is some **markdown** baby!"} )
	
Now go visit `http://myserver/pages/first-page`
