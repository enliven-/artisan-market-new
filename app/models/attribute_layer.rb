class AttributeLayer < ActiveRecord::Base

  belongs_to  :palette
  has_many    :palette_attributes, class_name: 'Attribute'

  amoeba do
    enable
  end
  
end
