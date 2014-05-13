class CommentThread < ActiveRecord::Base

  belongs_to :design_version
  
  has_many   :comments

end
