class DesignVersion < ActiveRecord::Base

  belongs_to :project
  has_many   :comment_threads
  
end
