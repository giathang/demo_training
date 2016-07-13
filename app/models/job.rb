class Job < ActiveRecord::Base
	validates :company, presence: true
	validates :name, presence: true
	validates :description, presence: true
	def self.search(search)
		if search
			self.where("name LIKE ? OR company LIKE ?", "%#{search}%", "%#{search}%")
		else
			self.all
		end
	end
end
