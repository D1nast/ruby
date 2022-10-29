class UserController < ApplicationController
	def user
		@users=Post.all
	end

	def show
		@user=Post.find_by(id:params[:id])
	end

	def new
		@user = Post.new
  end

	def create
		@user=Post.new(user:params[:user])
		 if @user.save
			flash[:notice]="ユーザー登録完了"
		  redirect_to("/user/#{@user.id}")
		 else
			render("/user/new")
		 end
  end

	def edit
		@user=Post.find_by(id: params[:id])  
	end

	def update            
		@user = Post.find_by(id: params[:id])            
		@user.user = params[:user]                       
		if @user.save            
			flash[:notice] = "ユーザー情報を編集しました"            
		 redirect_to("/user/#{@user.id}")            
		else            
			render("user/edit")            
	 end            
  end
end
