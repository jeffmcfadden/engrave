module Engrave
  class Page < ActiveRecord::Base
    attr_accessible :body, :slug, :title
    
    extend ::FriendlyId
    friendly_id :title, use: :slugged
  end
end
