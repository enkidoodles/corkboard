class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to branches_path
    else
    end
  end
end
