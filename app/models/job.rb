class Job < ActiveRecord::Base
	validates :company, presence: true
	validates :name, presence: true
	validates :description, presence: true
	has_many :comments, dependent: :destroy
	has_many :applies

	def self.search(search)
		if search
			self.where("name LIKE ? OR company LIKE ? OR address LIKE ? OR phone LIKE ? OR category LIKE ?",
								 "%#{search}%", "%#{search}%", "%#{search}%","%#{search}%","%#{search}%")
		else
			self.all
		end
	end

	geocoded_by :address
	after_validation :geocode

end
