Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "ads_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:ads, label: 'Ads', url: spree.admin_ads_path, icon: 'file') %>",
                     :disabled => false)
