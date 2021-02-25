class Staff < ActiveRecord::Base
  belongs_to :school
 has_many :subjects
 has_many :students, through: :subjects
end
