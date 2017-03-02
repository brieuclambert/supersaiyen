class ClientsController < ApplicationController
  def index
    @clients = Client.all
    if params[:client_id]
      @client = Client.find(params[:client_id])
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
      redirect_to pages_dashboard_path
    else
      render "new"
    end
  end

private

  def client_params
    params.require(:client).permit(:nom, :age, :nationalité, :adresse, :portable, :mail, :categorie, :profession)
  end
end
