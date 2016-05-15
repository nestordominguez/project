class Company < ActiveRecord::Base
  has_many :incidents
  has_many :users
end
