class Department < ActiveRecord::Base
	has_many :members
	has_many :associations
	has_many :projects, through: :associations
end
