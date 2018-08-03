class PicturesController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]
  def top
  end

  def index
    @pictures = Picture.all
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
    if @picture.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to pictures_path, notice: "投稿されました！"
    else
      render :new
    end
  end

  def show
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
    render :new if @picture.invalid?
  end

  private
    def pic_params
      params.require(:picture).permit(:content, :image, :image_cache)
    end

    def set_pic
      @picture = Picture.find(params[:id])
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :content)

end
