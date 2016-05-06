class PagesController < ApplicationController
  before_action :current_user, :require_admin, only: [:admin_areas, :admin_tenders]

  def home
  end

  def admin_tenders
    @tenders = Tender.where(nil)
    filtering_params(params).each do |key, value|
      @tenders = @tenders.public_send(key, value) if value.present?
    end
  end

  def admin_categories
    @categories = Category.all
    end

  def admin_areas
    @areas = Area.all
  end

  private

  def filtering_params(params)
    params.slice(:status, :area, :category, :tenders_like)
  end
end
