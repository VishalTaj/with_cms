class CreateWithCmsSections < ActiveRecord::Migration
  def change
    create_table :with_cms_sections do |t|
      t.string :name
      t.integer :rank, index: true	

      t.timestamps null: false
    end
  end
end
