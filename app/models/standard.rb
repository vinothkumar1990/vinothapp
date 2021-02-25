class Standard < ActiveRecord::Base
  belongs_to :school
  has_many :sections
end
