class Band < ActiveRecord::Base
  belongs_to :user
  has_many :savedbands, :dependent => :destroy

  has_many :concerts, :dependent => :destroy
  has_many :venues, :through => :concerts

  validates :user, :presence => true
  validates :name, :presence => true, :uniqueness => { :scope => :user }


  default_scope { order("created_at DESC") }
end
