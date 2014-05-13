class Project < ActiveRecord::Base

  validates   :label,       presence: true
  validates   :artisan_id,  presence: true
  # validates   :product_category_id, presence: true

  belongs_to  :artisan,   class_name: 'User'
  belongs_to  :customer,  class_name: 'User'

  belongs_to  :product_category
  has_many    :palettes
  has_many    :design_versions

  amoeba do
    enable
    set show_in_catalog: false
  end

  def clone
    proj_clone = self.amoeba_dup 
    proj_clone.update_attributes(customer_id: current_user.id, parent_project_id: self.id)
    proj_clone.save!
    proj_clone
  end

end
