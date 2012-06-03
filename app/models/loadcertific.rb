class Loadcertific < ActiveRecord::Base
  attr_accessible  :name, :certific
  mount_uploader :certific, CertificUploader
end
