class Certificate < ActiveRecord::Base
  belongs_to :sizes_pipe
  belongs_to :manufactur
  belongs_to :conclusion
  has_many :results,  :dependent => :delete_all
  belongs_to :installation_site
  belongs_to :gost
  belongs_to :ty
  belongs_to :support_document
  belongs_to :represent_host
  belongs_to :represent_tran
  belongs_to :instrumentation
  belongs_to :delegate
  belongs_to :type_pipe

end
