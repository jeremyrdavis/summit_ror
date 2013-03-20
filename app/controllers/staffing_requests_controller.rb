class StaffingRequestsController < ApplicationController
  # GET /staffing_requests
  # GET /staffing_requests.json
  def index
    @staffing_requests = StaffingRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffing_requests }
    end
  end

  # GET /staffing_requests/1
  # GET /staffing_requests/1.json
  def show
    @staffing_request = StaffingRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staffing_request }
    end
  end

  # GET /staffing_requests/new
  # GET /staffing_requests/new.json
  def new
    @staffing_request = StaffingRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staffing_request }
    end
  end

  # GET /staffing_requests/1/edit
  def edit
    @staffing_request = StaffingRequest.find(params[:id])
  end

  # POST /staffing_requests
  # POST /staffing_requests.json
  def create
    @staffing_request = StaffingRequest.new(params[:staffing_request])

    respond_to do |format|
      if @staffing_request.save
        format.html { redirect_to @staffing_request, notice: 'Staffing request was successfully created.' }
        format.json { render json: @staffing_request, status: :created, location: @staffing_request }
      else
        format.html { render action: "new" }
        format.json { render json: @staffing_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staffing_requests/1
  # PUT /staffing_requests/1.json
  def update
    @staffing_request = StaffingRequest.find(params[:id])

    respond_to do |format|
      if @staffing_request.update_attributes(params[:staffing_request])
        format.html { redirect_to @staffing_request, notice: 'Staffing request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staffing_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffing_requests/1
  # DELETE /staffing_requests/1.json
  def destroy
    @staffing_request = StaffingRequest.find(params[:id])
    @staffing_request.destroy

    respond_to do |format|
      format.html { redirect_to staffing_requests_url }
      format.json { head :no_content }
    end
  end
end
