class CreateAds < ActiveRecord::Migration
  def change
    create_table :spree_ads do |t|
      t.string :title
      t.attachment :image
      t.string :link
      t.string :size
      t.boolean :show_in_sidebar
      t.integer :position_in_sidebar
      t.boolean :show_in_homepage
      t.integer :position_in_homepage
      t.integer :taxon_id
      t.integer :position_in_taxon
      
      t.timestamps
    end
  end
end
