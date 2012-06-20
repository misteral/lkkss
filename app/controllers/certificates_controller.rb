class CertificatesController < InheritedResources::Base
  before_filter :authenticate_user! #, :except => [:show, :index]
  def cost
    #$der = $length.nil? ? "123456" : $length.length
    $length = []
    @hour = CostInput.find(1).hour
    @material = CostInput.find(1).material
    @work = 0.01
    @sum = 0

    Result.find_all_by_certificate_id($idr).each do |rem|
      if rem.length.nil? or (rem.length == 0)
        len = 1
      else
        len = rem.length
      end
      if rem.width.nil? or (rem.width == 0)
        wid = 1
      else
        wid = rem.width
      end
      @s = wid * len
      @m = @s * @material
      @t = @s * @work
      @o = @t * @material
      @z = @m + @o
      @sum += @z
    end
    $der = @sum

    @certificate = Certificate.find($idr)
    @certificate.cost = @sum
    @certificate.save
    #respond_to do |format|
    #  if @certificate.update_attributes(params[:certificate])
    #    format.html { redirect_to @xl, notice: 'Xl was successfully updated.' }
    #    format.json { head :ok }
    #  else
    #    format.html { render action: "edit" }
    #    format.json { render json: @xl.errors, status: :unprocessable_entity }
    #  end
    #end



  end
  def show
    @certificate = Certificate.find(params[:id])
    $idr = @certificate.id
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @certificate }
    end
  end
  def create
    #@certificate = User.new(params[:certificate])
    #if @user.save
    #  sign_in @user
    #  flash[:success] = "Welcome to University Sports!"
    #  redirect_to @user
    #else
    #  @title = "Sign up"
    #  render 'new'
    #end
    redirect_to :action => 'new', :controller => 'data_pipes'
  end

end
