class DataPipesController < InheritedResources::Base

  def create
    redirect_to  :action => 'new', :controller => 'results'
  end
end
