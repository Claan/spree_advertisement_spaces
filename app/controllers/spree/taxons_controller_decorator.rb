module Spree
  TaxonsController.class_eval do
    before_action :get_ads, only: :show

    protected 
      def get_ads
        @taxon_ads = Spree::Ad.where(taxon: Taxon.find_by_permalink!(params[:id])).sort_by(&:position)
      end
  end
end
