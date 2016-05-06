class TendersController < ApplicationController
  def new
    @tender = Tender.new
    @categories = Category.all
    @areas = Area.all
  end

  def show
    @tender = Tender.find(params[:id])
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

end
