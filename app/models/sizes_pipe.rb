class SizesPipe < ActiveRecord::Base
  belongs_to :document
  belongs_to :certificate
end
