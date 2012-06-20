# coding: utf-8
class CostsController < InheritedResources::Base
  before_filter :authenticate_user! #, :except => [:show, :index]
  # POST /xls
  # POST /xls.json
  def create
    $costr = Cost.new(params[:cost])


    #$rem = $costr.date_end
    #@all_certific = Certificate.where(:date_issue => ($costr.date_start.to_date)..($costr.date_end.to_date))
  @sum = 0
  Certificate.where(:date_issue => ($costr.date_start.to_date)..($costr.date_end.to_date)).each do |cer|
    if !cer.cost.nil?
      @sum += cer.cost
    end
  end
    $rem = @sum
      redirect_to :action => 'end_price', :controller => 'costs'

  end
end
