class User < ActiveRecord::Base
  validates :username, presence: true
  has_many :phonenumbers, :dependent => :destroy
end
