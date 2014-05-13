class Palette < ActiveRecord::Base

  has_one     :product_category
  has_many    :attribute_layers

  belongs_to  :user
  belongs_to  :project

  amoeba do 
    enable
  end

end
