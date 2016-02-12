class NotesController < ApplicationController
    layout false
  def index
  end

  def new
      @user = User.find(params[:user_id])
  end
    
    def add
        @note =Note.new(:user_id => params[:user_id],:note => params[:note][:post],:is_done =>false)
        
        if @note.save
            redirect_to({:controller => "users",:action => "show", :user_id => params[:user_id]})
        else
            render(:action => "new")
        end
    end
    
    def create
        
    end

  def edit
  end

  def delete
  end
end
