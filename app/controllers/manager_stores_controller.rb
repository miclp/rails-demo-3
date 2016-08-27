class ManagerStoresController < ApplicationController
  before_action :set_manager_store, only: [:show, :edit, :update, :destroy]

  # GET /manager_stores
  # GET /manager_stores.json
  def index
    @manager_stores = ManagerStore.all
  end

  # GET /manager_stores/1
  # GET /manager_stores/1.json
  def show
  end

  # GET /manager_stores/new
  def new
    @manager_store = ManagerStore.new
  end

  # GET /manager_stores/1/edit
  def edit
  end

  # POST /manager_stores
  # POST /manager_stores.json
  def create
    @manager_store = ManagerStore.new(manager_store_params)

    respond_to do |format|
      if @manager_store.save
        format.html { redirect_to @manager_store, notice: 'Manager store was successfully created.' }
        format.json { render :show, status: :created, location: @manager_store }
      else
        format.html { render :new }
        format.json { render json: @manager_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manager_stores/1
  # PATCH/PUT /manager_stores/1.json
  def update
    respond_to do |format|
      if @manager_store.update(manager_store_params)
        format.html { redirect_to @manager_store, notice: 'Manager store was successfully updated.' }
        format.json { render :show, status: :ok, location: @manager_store }
      else
        format.html { render :edit }
        format.json { render json: @manager_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manager_stores/1
  # DELETE /manager_stores/1.json
  def destroy
    @manager_store.destroy
    respond_to do |format|
      format.html { redirect_to manager_stores_url, notice: 'Manager store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager_store
      @manager_store = ManagerStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manager_store_params
      params.require(:manager_store).permit(:manager_id, :store_id)
    end
end
