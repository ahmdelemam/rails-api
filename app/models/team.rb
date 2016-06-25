class Team < ActiveRecord::Base
  belongs_to :championship
  belongs_to :user
end
