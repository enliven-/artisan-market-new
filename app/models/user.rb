class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, presence: true
  # validates :role, presence: true

  scope     :artisan,   ->  { where(role: 0) }
  scope     :customer,  ->  { where(role: 1) }

  has_many  :projects
  has_many  :palettes

  def projects
    Project.where("artisan_id=? or customer_id=?", self.id, self.id)
  end

  def role_type
    self.role == 0 ? 'artisan' : 'customer'
  end

end
