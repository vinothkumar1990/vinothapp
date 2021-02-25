class Subject < ActiveRecord::Base
  belongs_to :student
  belongs_to :staff
end
