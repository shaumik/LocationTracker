class Member < ActiveRecord::Base
  attr_accessible :name, :email, :role
end