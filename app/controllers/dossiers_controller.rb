class DossiersController < ApplicationController

  def index
    @dossiers = Dossier.all
  end

  def show
    @dossier = Dossier.find(params[:dossier_id])
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
      redirect_to clients_path(client_id: @client.id)
    else
      flash[:notice] = "Erreur "
    end
  end

  def update
    @dossier = Dossier.find(params[:id])
    if @dossier.update_attributes(dossier_params)
      redirect_to clients_path(dossier_id: @dossier.id, show_dossier: true)
    else
      render "edit"
    end
  end

private
  def dossier_params
    params.require(:dossier).permit(:nom, :juridiction, :categorie, :adversaire, :salaire_client, :salaire_adversaire, :nb_enfant_a_charge)
  end
end
