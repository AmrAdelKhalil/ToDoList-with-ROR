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
      @user= User.find (params[:user_id])
      @note= Note.find (params[:note_id])
  end
    
    def update
        @note=Note.find(params[:note_id])
       
        if @note.update_attributes(:note => params[:note][:note], :is_done => params[:note][:is_done])
            redirect_to({:controller => "users",:action => "show", :user_id => params[:user_id]})
        else
            render("edit")
        end
        
    end

  def delete
      @note = Note.find(params[:note_id])
      @note.destroy
      redirect_to({:controller => "users", :action => "show", :user_id => params[:user_id]})
  end
end
