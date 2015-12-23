class CorporationsController < ApplicationController
  before_action :set_corporation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @corporations = Corporation.all
    respond_with(@corporations)
  end

  def show
    @billionaires = Billionaire.where(corporation_id: @corporation)
    respond_with(@corporation)
  end

  def new
    @corporation = Corporation.new
    respond_with(@corporation)
  end

  def edit
  end

  def create
    @corporation = Corporation.new(corporation_params)
    @corporation.save
    respond_with(@corporation)
  end

  def update
    @corporation.update(corporation_params)
    respond_with(@corporation)
  end

  def destroy
    @corporation.destroy
    respond_with(@corporation)
  end

  private
    def set_corporation
      @corporation = Corporation.find(params[:id])
    end
    
    def corporation_params
      params.require(:corporation).permit(:name, :address, :avatar, :industry, :phone_number, :web_site)
    end
end
