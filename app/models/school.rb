class School < ActiveRecord::Base
has_many :standards
has_many :staffs
end
