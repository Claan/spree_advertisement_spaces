class Spree::Ad < ActiveRecord::Base
  validates_presence_of :link
  validates_presence_of :image

  has_attached_file :image, 
     styles: {mini: '48x48#', normal: '200x200>', large: '600x600>'},
     default_style: :large,
     url: "/assets/blocks/:id/:style/:basename.:extension",
     path: ":rails_root/public/assets/blocks/:id/:style/:basename.:extension"  
end
