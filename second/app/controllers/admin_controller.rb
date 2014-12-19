class AdminController < ApplicationController
  def dashboard
  end

  def helpdesk
  	@guide = Helpdesk.new
  end

  def blog
  	@post = Blog.new
  end
end
