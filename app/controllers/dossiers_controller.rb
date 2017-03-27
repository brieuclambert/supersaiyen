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
      @dossier.pension_alimentaire = @dossier.revenu_parent_debiteur * taux_applicable_pension(@dossier.nb_enfant_a_charge, @dossier.regime)
      @dossier.update_attributes(dossier_params)
      redirect_to clients_path(dossier_id: @dossier.id, show_dossier: true)
    else
      render "edit"
    end
  end

private
  def dossier_params
    params.require(:dossier).permit(:nom, :juridiction, :categorie, :adversaire, :regime, :revenu_parent_debiteur, :nb_enfant_a_charge, :parent_debiteur, :pension_alimentaire)
  end

  def taux_applicable_pension(enfants, regime)
    if enfants == 0
      return 0
    elsif regime == "Réduit"
      if enfants == 1
        return 0.18
      end
      if enfants == 2
        return 0.31
      end
      if enfants == 3
        return 0.399
      end
      if enfants == 4
        return 0.468
      end
      if enfants == 5
        return 0.53
      end
      if enfants == 6
        return 0.57
      end
    elsif regime == "Classique"
      if enfants == 1
        return 0.135
      end
      if enfants == 2
        return 0.23
      end
      if enfants == 3
        return 0.3
      end
      if enfants == 4
        return 0.352
      end
      if enfants == 5
        return 0.4
      end
      if enfants == 6
        return 0.432
      end
    elsif regime == "Alterné"
      if enfants == 1
        return 0.09
      end
      if enfants == 2
        return 0.156
      end
      if enfants == 3
        return 0.201
      end
      if enfants == 4
        return 0.236
      end
      if enfants == 5
        return 0.265
      end
      if enfants == 6
        return 0.288
      end
    end
  end



end
