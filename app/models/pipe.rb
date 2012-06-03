class Pipe < ActiveRecord::Base
  has_many :passports, :through => :passport_pipes
  belongs_to :data_pipe
  belongs_to :result
end
