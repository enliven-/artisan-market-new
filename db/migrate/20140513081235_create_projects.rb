class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :label
      t.text    :description
      t.integer :artisan_id
      t.integer :design_versions_count, default: 0
      t.integer :parent_project_id
      t.boolean :show_in_catalog
      t.integer :product_category_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
