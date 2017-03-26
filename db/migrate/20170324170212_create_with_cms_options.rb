class CreateWithCmsOptions < ActiveRecord::Migration
  def change
    create_table :with_cms_options do |t|
      t.string :name
      t.string :identifier
      t.string :option_type
      t.text :description
      t.integer :section_id, index: true
      
      t.timestamps null: false
    end
  end
end
