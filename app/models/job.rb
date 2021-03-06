class Job < ActiveRecord::Base
	validates :company, presence: true
	validates :name, presence: true
	validates :description, presence: true
	has_many :comments, dependent: :destroy

	def self.search(search)
		if search
			self.where("name LIKE ? OR company LIKE ? OR address LIKE ? OR phone LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%","%#{search}%")
		else
			self.all
		end
	end

	geocoded_by :address
	after_validation :geocode
end
