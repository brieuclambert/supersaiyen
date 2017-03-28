class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard ]

  def home
  end

  def dashboard
    @clients = Client.all
    @dossiers = Dossier.all
  end
end
