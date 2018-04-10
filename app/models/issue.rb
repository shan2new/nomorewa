class Issue < ApplicationRecord
	belongs_to :user
	has_many :opinions
end
