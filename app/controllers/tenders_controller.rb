class TendersController < ApplicationController
  def new
    @tender = Tender.new
    @categories = Category.all
    @areas = Area.all
  end

  def show
    @tender = Tender.find(params[:id])
  end

  def destroy
    @tender = Tender.destroy(params[:id])
    redirect_to 'admin_tenders'
  end

  def create
    @tender = Tender.create(tender_params.except(:category, :area)) do |t|
      t.user_id = current_user.id
      t.category_id = tender_params[:category]
      t.area_id = tender_params[:area]
      t.status = 'in_progress'
    end
    if @tender.save
      redirect_to 'tenders'
    else
      redirect_to 'posts/new'
    end
  end

  def update_status
    @tender = Tender.find(params[:id])
    @tender.update(status: 'modered')
  end

  def index
    @posts = Post.order(created_at: :desc).first(4)
    @categories = Category.all
    @tenders = Tender.where(nil)
    filtering_params(params).each do |key, value|
      @tenders = @tenders.public_send(key, value) if value.present?
    end
  end

  private

  def filtering_params(params)
    params.slice(:status, :area, :category, :tenders_like)
  end

  def tender_params
    params.require(:tender).permit(:title, :content, :address, :category, :area, :amount, :currency, :deadline)
  end

end
