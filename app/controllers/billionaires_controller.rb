class BillionairesController < ApplicationController
  before_action :set_billionaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @billionaires = Billionaire.all
    respond_with(@billionaires)
  end

  def show
    respond_with(@billionaire)
  end

  def new
    @billionaire = Billionaire.new
    respond_with(@billionaire)
  end

  def edit
  end

  def create
    @billionaire = Billionaire.new(billionaire_params)
    @billionaire.save
    respond_with(@billionaire)
  end

  def update
    @billionaire.update(billionaire_params)
    respond_with(@billionaire)
  end

  def destroy
    @billionaire.destroy
    respond_with(@billionaire)
  end

  private
    def set_billionaire
      @billionaire = Billionaire.find(params[:id])
    end

    def billionaire_params
      params.require(:billionaire).permit(:name, :address, :net_worth, :avatar, :industry, :corporation_id)
    end
end
