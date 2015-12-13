class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bands, :dependent => :destroy
  has_many :venues, :dependent => :destroy
  has_many :concerts, :dependent => :destroy
  has_many :savedbands, :dependent => :destroy
  has_many :savedband_bands, :through => :savedbands, :source => :band

  has_many :friend_requests_where_sender, :class_name => "FriendRequest", :foreign_key => "sender_id", :dependent => :destroy
  has_many :friends_where_sender, :through => :friend_requests_where_sender, :source => :receiver

  has_many :friend_requests_where_receiver, :class_name => "FriendRequest", :foreign_key => "receiver_id", :dependent => :destroy
  has_many :friends_where_receiver, :through => :friend_requests_where_receiver, :source => :sender

  has_many :timeline_bands, :through => :friends_where_sender, :source => :bands

  validates :username, :presence => true, :uniqueness => true
end
