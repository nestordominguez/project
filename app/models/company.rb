class Company < ActiveRecord::Base
  has_many :incidents
  has_many :users
  has_many :admins
  has_many :areas
end
