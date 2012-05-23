module Engrave
  class Author < ActiveRecord::Base
    attr_accessible :bio, :name
  end
end
