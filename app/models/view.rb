class View < ApplicationRecord
	validates :name, presence: true, not_nil: true
end
