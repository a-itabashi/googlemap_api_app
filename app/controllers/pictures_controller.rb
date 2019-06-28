require 'net/http'
require 'uri'
require 'json'

class PicturesController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:destroy, :edit]

  def top
  end

  def index
    @pictures = Picture.all.order(created_at: :desc)
  end

  def new
    if params[:back]
      @picture = Picture.new(pic_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(pic_params)
    @picture.user_id = current_user.id
    if @picture.save
      #PicturesMailer.picture_mail(@picture).deliver
      redirect_to pictures_path, notice: "投稿されました！"
    else
      render :new
    end
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id:@picture.id)
    @api_key = ENV["GOOGLE_MAP_API"]
  end

  def edit
  end

  def update
    if @picture.update(pic_params)
      redirect_to pictures_path, notice: "更新されました！"
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
      redirect_to pictures_path, notice: "削除されました！"
  end

  def confirm
    @picture = Picture.new(pic_params)
    @picture.user_id = current_user.id
    render :new if @picture.invalid?
  end

  def map
    
    # @pictures = Picture.all.where('not latitude is null and not longitude is null')
    # @pictures = Picture.all.where.not(latitude: nil).where.not(longitude: nil)
    @pictures = Picture.all.where.not("latitude = ?", "nil").where.not("longitude = ?", "nil")
    @api_key = ENV["GOOGLE_MAP_API"]

  end

  private

  def pic_params
    params.require(:picture).permit(:content, :image, :image_cache, :latitude, :longitude)
  end

  def set_pic
    @picture = Picture.find(params[:id])
  end

  def set_user
    redirect_to pictures_path unless @picture.user_id == current_user.id
  end
end
