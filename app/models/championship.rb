class Championship < ActiveRecord::Base
  has_many :teams, dependent: :destroy
  belongs_to :user
end
