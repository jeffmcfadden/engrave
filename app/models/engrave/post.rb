module Engrave
  class Post < ActiveRecord::Base
    belongs_to :author
    attr_accessible :body, :draft, :published_at, :slug, :story_link, :title
    
    scope :published, where( [ "draft = ? AND published_at < ?", false, Time.now ] ).order( 'published_at DESC' )
    scope :draft, where( :draft => true )
  
    extend ::FriendlyId
    friendly_id :title, use: :slugged
  end
end
