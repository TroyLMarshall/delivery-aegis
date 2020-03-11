# frozen_string_literal: true

# Controller to manage deliveries
#
# @author Troy L. Marshall
# @since 0.0.1
class DeliveriesController < ApplicationController
  before_action :set_delivery, only: %i[show edit update destroy]

  # GET /deliveries
  # GET /deliveries.json
  def index
    @deliveries = Delivery.all
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show; end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
  end

  # GET /deliveries/1/edit
  def edit; end

  # POST /deliveries
  # POST /deliveries.json
  # rubocop:disable Metrics/MethodLength
  def create
    @delivery = Delivery.new(delivery_params)

    respond_to do |format|
      if @delivery.save
        format.html do
          redirect_to @delivery, notice: I18n.translate("success", scope: %i[controllers deliveries create])
        end
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render :new }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end
  # rubocop:enable Metrics/MethodLength

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  # rubocop:disable Metrics/MethodLength
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html do
          redirect_to @delivery, notice: I18n.translate("success", scope: %i[controllers deliveries update])
        end
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end
  # rubocop:enable Metrics/MethodLength

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html do
        redirect_to deliveries_url, notice: I18n.translate("success", scope: %i[controllers deliveries destroy])
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_delivery
    @delivery = Delivery.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def delivery_params
    params.require(:delivery).permit(:description)
  end
end
