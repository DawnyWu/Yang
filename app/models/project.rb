class Project < ActiveRecord::Base
	has_many :members
	has_many :associations
	has_many :departments, through: :associations
end
