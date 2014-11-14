class Spree::Admin::AdsController < Spree::Admin::ResourceController
  def index
    if params[:from].present?
      if params[:from] == "homepage"
        @ads = Spree::Ad.from_homepage.order("position_in_homepage ASC")
      elsif params[:from] == "sidebar"
        @ads = Spree::Ad.from_sidebar.order("position_in_sidebar ASC")
      elsif params[:from] == "taxons"
        @ads = Spree::Ad.from_taxon.order('position_in_taxon ASC').group_by(&:taxon)
      end
    else
      @ads = Spree::Ad.all
    end
  end
end
