class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :validatable
  has_many :incidents
  has_many :comment
  belongs_to :company
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
