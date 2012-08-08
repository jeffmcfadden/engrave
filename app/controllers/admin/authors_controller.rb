class Admin::AuthorsController < ApplicationController
  respond_to :html, :json

  load_and_authorize_resource :author

  def show
    @author = Author.find( params[:id] )
    respond_with( @author )
  end

end
