class Conclusion < ActiveRecord::Base
  belongs_to :document
  has_many :certificates
end
