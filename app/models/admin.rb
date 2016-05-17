class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :validatable
  belongs_to :company
  has_many :incidents
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
