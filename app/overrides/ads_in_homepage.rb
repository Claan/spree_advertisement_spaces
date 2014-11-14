Deface::Override.new(virtual_path:  "spree/home/index",
                     name:          "ads_homepage",
                     replace: "[data-hook='homepage_products']",
                     text:          "<div class='homepage-ads'><%= render @homepage_ads %></div>",
                     disabled:      false)
