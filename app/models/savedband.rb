class Savedband < ActiveRecord::Base
  belongs_to :user
  belongs_to :band

  validates :user, :presence => true
  validates :band, :presence => true, :uniqueness => { :scope => :user }
end
