class UsersController < ApplicationController
  layout false
  def index
  end

  def show
  end

  def new
#      @user=User.new({:first_name => "Ex.Amr",:second_name => "Ex.Adel", :email => "blabla@bla.com"})
  end

    def create
        @user = User.new(user_pram)
        
        if @user.save
            redirect_to(:action =>'index')
        else
            render('new')
        end
    end

  def edit
  end

  def delete
  end
    
    private 
    def user_pram
        params.require(:user).permit(:first_name,:second_name,:email,:password)
    end
end