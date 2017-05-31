class GrupoUsersController < ApplicationController
  before_action :set_grupo_user, only: [:show, :edit, :update, :destroy]

  # GET /grupo_users
  # GET /grupo_users.json
  def index
    @grupo_users = GrupoUser.all
  end

  # GET /grupo_users/1
  # GET /grupo_users/1.json
  def show
  end

  # GET /grupo_users/new
  def new
    @grupo_user = GrupoUser.new
  end

  # GET /grupo_users/1/edit
  def edit
  end

  # POST /grupo_users
  # POST /grupo_users.json
  def create
    @grupo_user = GrupoUser.new(grupo_user_params)

    respond_to do |format|
      if @grupo_user.save
        format.html { redirect_to @grupo_user, notice: 'Grupo user was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_user }
      else
        format.html { render :new }
        format.json { render json: @grupo_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_users/1
  # PATCH/PUT /grupo_users/1.json
  def update
    respond_to do |format|
      if @grupo_user.update(grupo_user_params)
        format.html { redirect_to @grupo_user, notice: 'Grupo user was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_user }
      else
        format.html { render :edit }
        format.json { render json: @grupo_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_users/1
  # DELETE /grupo_users/1.json
  def destroy
    @grupo_user.destroy
    respond_to do |format|
      format.html { redirect_to grupo_users_url, notice: 'Grupo user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_user
      @grupo_user = GrupoUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_user_params
      params.require(:grupo_user).permit(:user_id, :grupo_id)
    end
end
