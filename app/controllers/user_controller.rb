class UserController < ApplicationController

  def index

    if params[:search] == nil
      @user= User.all
    elsif params[:search] == ''
      @user= User.all
    else
      #部分検索
      @user = User.where("body LIKE ? ",'%' + params[:search] + '%')
    end

    


    


  end




  def link
  end

  def new
    
  end


  def show
    @user = user.find_by(id: params[:id])
  end

  def create

    user.user_id = current_user.id

    @image = Image.new(image_params)
    if @image.save
      redirect_to @image, notice: "画像がアップロードされました。"
    else
      render :new
    end

    


  end

  private
  def user_params
      params.require(:user).permit(:id, :image, question:[])
  end

  def image_params
    params.require(:image).permit(:image)
  end


end

