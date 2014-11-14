Deface::Override.new(virtual_path:  "spree/taxons/show",
                     name:          "ads_homepage",
                     insert_bottom: "[data-hook='taxon_products']",
                     text:          "<div class='homepage-ads row'><%= render @taxon_ads if @taxon_ads %></div>",
                     disabled:      false)
