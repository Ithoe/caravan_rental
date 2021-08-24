class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @caravans = Caravan.all
  end
end
