class Incident < ActiveRecord::Base
	belongs_to :user
	belongs_to :admin
	belongs_to :category
	belongs_to :company
	has_many :comments, dependent: :destroy
end
