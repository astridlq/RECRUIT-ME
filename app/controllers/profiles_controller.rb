class ProfilesController < ApplicationController
  def search
    @user = current_user
    authorize :profiles, :search?
  end
end
