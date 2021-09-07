class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    #/users
    def index
        @users = User.all
    end

    #/users/new
    def new
        @user = User.new
    end

    #/users POST
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user, notice: "Usuário criado com sucesso"
        else
            render 'new'
        end
    end

    # users/id/edit
    def edit
    end

    # users/id
    def show
    end

    # users/id
    def update
        if @user.update(user_params)
            redirect_to @user, notice: "Usuário atualizado com sucesso"
        else
            render 'new'
        end
    end

    # users/id
    def destroy
        @user.destroy
        redirect_to users_path,
        notice: "Usuário deletado com sucesso"
    end

    private
    def user_params
        params.require(:user).permit(:nome, :rua, :bairro, :numero, :complemento)
    end

    def find_user
        @user = User.find(params[:id])
    end
end