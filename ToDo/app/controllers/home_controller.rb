class HomeController < ApplicationController
	layout false
  def welcome
  end
  def index
	render('welcome')
  end
end
