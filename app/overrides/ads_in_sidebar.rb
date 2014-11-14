Deface::Override.new(virtual_path: "spree/shared/_sidebar",
                     name: "ads_in_sidebar",
                     insert_bottom: "#sidebar",
                     text: "<div class='sidebar-ads row'><%= render @sidebar_ads %></div>",
                     disabled: false)
