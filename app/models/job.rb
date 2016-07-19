class Job < ActiveRecord::Base
	validates :company, presence: true
	validates :name, presence: true
	validates :description, presence: true

	has_many :comments, dependent: :destroy
	belongs_to :category

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

	def category_name
		category.try(:name)
	end

	def category_name=(name)
		self.category = Category.find_or_create_by(name: name) if name.present?
	end
end
