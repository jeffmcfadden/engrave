class AuthorsController < ApplicationController
  respond_to :html, :json
  
  def show
    @author = Author.find( params[:id] )
    respond_with( @author )
  end
  
end
