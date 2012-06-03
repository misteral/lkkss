class Download < ActiveRecord::Base
  attr_accessible :name, :link, :remote_link_url
  mount_uploader :link, LinkUploader
end
