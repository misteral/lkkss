class CertificatesController < InheritedResources::Base
  def cost

  end
  def create
    @certificate = User.new(params[:certificate])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to University Sports!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
