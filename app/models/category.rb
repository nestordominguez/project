class Category < ActiveRecord::Base
	has_many :incident
end
