class Admin::PagesController < ApplicationController
  respond_to :html, :json

  load_and_authorize_resource :page

  def show
    @page = Page.find( params[:id] )
    respond_with( @page )
  end

end