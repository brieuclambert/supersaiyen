class DossiersController < ApplicationController

  def index
    @dossiers = Dossier.all
  end

  def show
    @dossier = Dossier.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @dossier = Dossier.new
  end

  def create
    @client = Client.find(params[:client_id])
    @dossier = Dossier.new(dossier_params)
    @dossier.client_id = @client.id
    if @dossier.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

private
  def dossier_params
    params.require(:dossier).permit(:nom, :juridiction, :categorie, :adversaire)
  end
end
