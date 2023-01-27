class Wiki < ApplicationRecord
		validates :title, presence: true
end
