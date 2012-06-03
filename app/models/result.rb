class Result < ActiveRecord::Base
  belongs_to :certificate
  belongs_to :pipe, :dependent => :delete
end
