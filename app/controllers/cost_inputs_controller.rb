class CostInputsController < InheritedResources::Base
  def show
    redirect_to :action => 'new', :controller => 'loadcertifics'
  end
end
