class HelpdesksController < ApplicationController
  def index
        @recent = Helpdesk.order("created_at desc").limit(5)
        @featuredone = Helpdesk.where(:featuredone => true).limit(4)
        @featuredtwo = Helpdesk.where(:featuredtwo => true).limit(5)
  end

  def show
    @guide = Helpdesk.find(params[:id])
  end

  def edit
    render :layout => 'admin'
  end

  def update
  end

  def new
    @guide = Helpdesk.new
    render :layout => 'admin'
  end

  def create
    @guide = Helpdesk.create(guide_params)
    if @guide.save
	    respond_to do |format|
	      format.html { redirect_to root_path, notice: 'Post was successfully created.' }
	      format.json {  }
	    end
    else
	    respond_to do |format|
          format.html { redirect_to root_path, notice: 'Post was successfully created.' }
          format.json {  }
	    end
    end
  end

  def guide_params
    params.require(:helpdesk).permit(:title, :content, :youtube, :featuredtwo, :featuredone)
  end
end
