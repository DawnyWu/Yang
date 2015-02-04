class Association < ActiveRecord::Base
	belongs_to :department
	belongs_to :project
	validates :department_id, uniqueness: {scope: :project_id}
end
