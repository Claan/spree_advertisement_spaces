ApplicationController.class_eval do
  before_filter :load_sidebar_ads

  private
    def load_sidebar_ads
      @sidebar_ads = Spree::Ad.from_sidebar
    end
end
