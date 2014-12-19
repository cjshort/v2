class BlogsController < ApplicationController
  def index
  	@latestPost = Blog.last
  	@blogPosts = Blog.order("created_at desc").offset(1)
  end

  def show
  	@blogPost = Blog.find(params[:id])
  end

  def edit
  end

  def new
    @post = Blog.new
    render :layout => 'admin'
  end

  def create
    @post = Blog.create(blog_params)
	if @post.save
		respond_to do |format|
		  format.html { redirect_to root_path }
		  format.js
		end
	end
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :image)
  end
end
