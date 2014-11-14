class Spree::Ad < ActiveRecord::Base
  belongs_to :taxon

  validates_presence_of :link
  validates_presence_of :image
  validates_presence_of :size

  has_attached_file :image, 
     styles: {mini: '48x48#', normal: '200x200>', large: '600x600>'},
     default_style: :large,
     url: "/assets/blocks/:id/:style/:basename.:extension",
     path: ":rails_root/public/assets/blocks/:id/:style/:basename.:extension"  

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  scope :from_homepage, -> { where show_in_homepage: true }
  scope :from_sidebar, -> { where show_in_sidebar: true }
  scope :from_taxon, -> { where.not taxon_id: nil }

  def position
    if self.show_in_homepage?
      position = position_in_homepage
    elsif self.show_in_sidebar?
      position = position_in_sidebar
    elsif self.taxon_id.present?
      position = position_in_taxon
    end 

    position
  end

  # Update ads position using before_save sendback
  before_save :update_positions

  def update_positions
    if self.show_in_sidebar?
      update_type_of_position self, 'position_in_sidebar'
    elsif self.show_in_homepage?
      update_type_of_position self, 'position_in_homepage'
    elsif self.taxon_id.present?
      update_type_of_position self, 'position_in_taxon'
    end

    true
  end

  def update_type_of_position(object, field)
    if new_record?
      Spree::Ad.where("#{field} >= ?", object.field).update_all("#{field} = #{field} + 1")
    else
      return unless prev_position = Spree::Ad.find(object.id).send(field)
      if prev_position > object.send(field)
        Spree::Ad.where("? <= #{field} AND #{field} < ?", object.send(field), prev_position).update_all("#{field} = #{field} + 1")
      elsif prev_position < object.send(field)
        Spree::Ad.where("? < #{field} AND #{field} <= ?", prev_position, object.send(field)).update_all("#{field} = #{field} - 1")
      end
    end 
  end
end
