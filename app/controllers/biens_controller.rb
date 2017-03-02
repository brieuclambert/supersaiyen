class BiensController < ApplicationController
  def new
    @client = Client.find(params[:client_id])
    @bien = Bien.new
  end

  def create
    @client = Client.find(params[:client_id])
    @bien = Bien.new(bien_params)
    @bien.client_id = @client.id
    if @bien.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  private
  def bien_params
    params.require(:bien).permit(:nom, :localisation, :valeur_empr, :valeur_act, :prix_acq, :profit_subs)
  end
end
