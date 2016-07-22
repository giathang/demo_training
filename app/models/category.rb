class Category < ActiveRecord::Base
  has_many :categoryships
  has_many :jobs, through: :categoryships
end
