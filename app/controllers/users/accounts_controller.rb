class Users::AccountsController < ApplicationController
    layout 'listing'
    def my_account
        @user = current_user
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_my_account_path, notice: "Your account has been updated successfully."
        else
            render 'edit'
        end
    end

    private 

        def user_params
            params.require(:user).permit!
        end

end