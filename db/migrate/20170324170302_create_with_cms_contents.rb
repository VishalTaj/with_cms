class CreateWithCmsContents < ActiveRecord::Migration
  def change
    create_table :with_cms_contents do |t|
      t.integer :option_id, index:true
      t.text :content
      t.integer :rank, index: true
      
      t.timestamps null: false
    end
  end
end
