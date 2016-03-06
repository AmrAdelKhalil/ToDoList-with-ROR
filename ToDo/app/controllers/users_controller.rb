class UsersController < ApplicationController
   layout false
    
    def login
    end
    
   def index
       #redirect the whole request to login
       redirect_to(:action =>"login")
   end

   def show
       #show a specify user by finding him using his id
       @user =User.find(params[:user_id])
   end
    
    def checkUser
        #finding user using his email
        @user = User.find_by_email(params[:user][:email])
        
        #check for the password
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
       #create a new user
        @user = User.new(user_pram)
        
       #if user is valid, save it on database and then show his profile, else back to new
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
