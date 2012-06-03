class Document < ActiveRecord::Base
  has_many :sizes_pipes
  has_many :conclusion
end
