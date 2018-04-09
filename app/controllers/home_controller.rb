class HomeController < ApplicationController
  def index
    @likelion = Tiger.all
  end

  def new
  end

  def create
    @post = Tiger.new
    @post.title = params[:lion_title]
    @post.content = params[:lion_content]
    @post.save
    
    redirect_to '/home/index'
  end
end
