class Categoryship < ActiveRecord::Base
  belongs_to :job
  belongs_to :category
end
