class Project < ActiveRecord::Base

  validates   :label,       presence: true
  validates   :artisan_id,  presence: true
  # validates   :product_category_id, presence: true

  belongs_to  :artisan,   class_name: 'User'
  belongs_to  :customer,  class_name: 'User'

  belongs_to  :product_category
  has_many    :palettes
  has_many    :design_versions

end
