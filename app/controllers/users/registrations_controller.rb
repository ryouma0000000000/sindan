class Users::RegistrationsController < ApplicationController

    protected

    def after_sign_up_path_for(resource)
      perfumes_path # サインアップ後にリダイレクトするパス
    end



end
