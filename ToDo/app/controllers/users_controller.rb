class UsersController < ApplicationController
   layout false
    
    def login
    end
    
   def index
       redirect_to(:action =>"login")
   end

   def show
       @user =User.find(params[:user_id])
   end
    
    def checkUser
        @user = User.find_by_email(params[:user][:email])
       
       if @user && @user.password ==params[:user][:password]
           redirect_to(:action => "show", :user_id => @user.id)
       else
           redirect_to(:action => 'login')
       end
    end

   def new
#      @user=User.new({:first_name => "Ex.Amr",:second_name => "Ex.Adel", :email => "blabla@bla.com"})
   end
    
   def create
        @user = User.new(user_pram)
        
        if @user.save
            render(:action =>'show')
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
