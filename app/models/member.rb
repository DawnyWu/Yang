class Member < ActiveRecord::Base
	enum sex: [:female, :male]
	belongs_to :department
	validates :name,:sex,:email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :age, numericality: true
end
