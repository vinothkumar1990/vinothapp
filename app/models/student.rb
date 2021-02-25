class Student < ActiveRecord::Base
  belongs_to :section
  has_many :subjects
  has_many :staffs, through: :subjects
end
