class Passport < ActiveRecord::Base
  has_many :pipes, :through => :passport_pipes
end
