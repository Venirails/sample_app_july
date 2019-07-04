class AdminController < ApplicationController
	def login
		if request.post?
			if params[:admin][:username]=="admin" && params[:admin][:password] == "nimda"
			session[:admin]="admin"
			redirect_to :controller => :books
			else
				flash[:notice] = "Wrong username/passwrd"
				render :action=>:login
		     end
		
			
		end
		
	end
	
	def logout
		session[:admin]=nil
		flash[:notice] = "You are logged out"
		redirect_to :controller => :books
		
	end
end
