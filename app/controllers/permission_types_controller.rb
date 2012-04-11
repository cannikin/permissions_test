class PermissionTypesController < ApplicationController
  # GET /permission_types
  # GET /permission_types.json
  def index
    @permission_types = PermissionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @permission_types }
    end
  end

  # GET /permission_types/1
  # GET /permission_types/1.json
  def show
    @permission_type = PermissionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @permission_type }
    end
  end

  # GET /permission_types/new
  # GET /permission_types/new.json
  def new
    @permission_type = PermissionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @permission_type }
    end
  end

  # GET /permission_types/1/edit
  def edit
    @permission_type = PermissionType.find(params[:id])
  end

  # POST /permission_types
  # POST /permission_types.json
  def create
    @permission_type = PermissionType.new(params[:permission_type])

    respond_to do |format|
      if @permission_type.save
        format.html { redirect_to permission_types_url, notice: 'Permission type was successfully created.' }
        format.json { render json: @permission_type, status: :created, location: @permission_type }
      else
        format.html { render action: "new" }
        format.json { render json: @permission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /permission_types/1
  # PUT /permission_types/1.json
  def update
    @permission_type = PermissionType.find(params[:id])

    respond_to do |format|
      if @permission_type.update_attributes(params[:permission_type])
        format.html { redirect_to permission_types_url, notice: 'Permission type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @permission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permission_types/1
  # DELETE /permission_types/1.json
  def destroy
    @permission_type = PermissionType.find(params[:id])
    @permission_type.destroy

    respond_to do |format|
      format.html { redirect_to permission_types_url }
      format.json { head :no_content }
    end
  end
end
