class CostMenusController < InheritedResources::Base
  before_filter :authenticate_user! #, :except => [:show, :index]
end
