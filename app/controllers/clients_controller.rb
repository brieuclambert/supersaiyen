class ClientsController < ApplicationController
  def index
    @clients = Client.all
    if params[:client_id]
      @client = Client.find(params[:client_id])
    end
    if params[:new_client] == "true"
      @new_client = Client.new
    end
    if params[:edit_client] == "true"
      @edit_client = Client.find(params[:client_id])
    end
    if params[:new_dossier] == "true"
      @client = Client.find(params[:client_id])
      @new_dossier = Dossier.new
    end
    if params[:edit_dossier] == "true"
      @edit_dossier = Dossier.find(params[:dossier_id])
    end
    if params[:show_dossier] == "true"
      @dossier = Dossier.find(params[:dossier_id])
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path(client_id: @client.id)
    else
      redirect_to clients_path(new_client: true, client_id: @client.id)
    end
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
      redirect_to clients_path(client_id: @client.id)
    else
      render "edit"
    end
  end

private

  def client_params
    params.require(:client).permit(:nom, :nationalite, :adresse, :portable, :mail, :categorie, :profession, :prenom, :date_de_naissance, :genre)
  end
end
