class HomeController < ApplicationController
    #This controller use no layout, layout used when something is common between pages
    #and you need to make it gloabal.
	layout false
    
    #main function(welcome page) that related to (views -> home -> welcome.html.erb)
  def welcome
  end
    #index method is always called first when you don't specify what method
    #but i mad it render to welcome which shows the welcome page
  def index
	render('welcome')
  end
end
