module Spree
  HomeController.class_eval do
    before_action :get_ads, only: :index

    protected 
      def get_ads
        @homepage_ads = Spree::Ad.from_homepage.sort_by(&:position) 
      end
  end
end
