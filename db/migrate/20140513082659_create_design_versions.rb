class CreateDesignVersions < ActiveRecord::Migration
  def change
    create_table :design_versions do |t|
      t.integer :project_id
      t.text    :html
      t.integer :comment_thread_count, default: 0

      t.timestamps
    end
  end
end
