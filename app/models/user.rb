class User < ActiveRecord::Base
  validates :username, presence: true
  has_many :phones, :dependent => :destroy
end
