class Website < ApplicationRecord
	validates :name,:link, presence: true

end
