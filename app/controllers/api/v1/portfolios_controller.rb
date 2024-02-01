class Api::V1::PortfoliosController < ApplicationController
  before_action :authorize
  before_action :set_portfolio, only: %i[ show update destroy ]

  # GET /portfolios
  def index
    @portfolios = @current_user.portfolios.all

    render json: @portfolios
  end

  def all_portfolios
    
     @portfolios = Portfolio.all
     render json: @portfolios

  end

  # GET /portfolios/1
  def show
    render json: @portfolio
  end

  # POST /portfolios
  def create
    @portfolio = @current_user.portfolios.new(portfolio_params)


    if @portfolio.save
      render json: @portfolio, status: :created
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_params
      params.require(:portfolio).permit(:portfolio_name, :asset_id, :amount, :paid,:payment_status )
    end
end
