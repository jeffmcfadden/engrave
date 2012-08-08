class Admin::PostsController < ApplicationController
  respond_to :html, :json

  load_and_authorize_resource :post

  def index
    @posts = Post.all
    respond_with( @posts )
  end

  def show
    @post = Post.find( params[:id] )
    respond_with( @post )
  end

  def edit
    @post = Post.find( params[:id] )
    respond_with( @post )
  end

  def update
    @post = Post.find( params[:id] )

    if @post.update_attributes( post_params )
      flash[:notice] = "Post updated successfully"
    else
      flash[:notice] = "Post failed to update"
    end

    respond_with( [:admin, @post] )
  end

  def create
    @post = Post.new

    if @post.update_attributes( post_params )
      flash[:notice] = "Post created successfully"
    else
      flash[:notice] = "Post failed to update"
    end

    respond_with( [:admin, @post] )
  end


  private

  def post_params
    params[:post].slice( :title, :story_link, :draft, :published_at, :body )
  end

end
