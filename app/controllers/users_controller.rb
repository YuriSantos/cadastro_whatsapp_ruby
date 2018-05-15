class UsersController < BaseController

  before_action :load_permissions, only: [:new, :edit, :create, :update]
  before_action :user_or_not_found, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def index
    busca = params[:search].present? ? params[:search] : {}
    @users = User.search(busca).page(params[:page]).per(20)
    respond_to do |format|
      format.js { render json: @users, status: 200 }
      format.html
    end
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
   /generate_default_password/
    if @user.save
      flash[:success] = "Usuario cadastrado"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash['success'] = 'Usuario atualizado'
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash['success'] = 'Usuário Deletado'
    redirect_to users_url
  end

  protected

    def load_permissions
      @permissions = generate_permissions
    end

 /   def generate_default_password
      @user.password = '12345678'
      @user.password_confirmation = '12345678'
    end*/

    def user_or_not_found
      @user = User.find_by(id: params[:id])
      if @user.nil?
        flash['danger'] = 'Usuario não encontrado.'
        redirect_to users_path
      end

    end

    def user_params
      user_params = params.require(:user).permit(:first_name,
                                   :last_name,
                                   :email,
                                   :mobile_phone,
                                   :birth_date,
                                   :cpf,
                                   :registration,
                                   :admission_date,
                                   :password,
                                   :password_confirmation,
                                   :unit_id,
                                   permission_ids: [])
      user_params[:permission_ids] = user_params[:permission_ids].concat(params[:permission_ids])
      user_params
    end

end
