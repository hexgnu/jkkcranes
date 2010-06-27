class CranesController < ApplicationController
  # GET /cranes
  # GET /cranes.xml
  def index
    @cranes = Crane.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cranes }
    end
  end

  # GET /cranes/1
  # GET /cranes/1.xml
  def show
    @crane = Crane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crane }
    end
  end

  # GET /cranes/new
  # GET /cranes/new.xml
  def new
    @crane = Crane.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crane }
    end
  end

  # GET /cranes/1/edit
  def edit
    @crane = Crane.find(params[:id])
  end

  # POST /cranes
  # POST /cranes.xml
  def create
    @crane = Crane.new(params[:crane])

    respond_to do |format|
      if @crane.save
        format.html { redirect_to(@crane, :notice => 'Crane was successfully created.') }
        format.xml  { render :xml => @crane, :status => :created, :location => @crane }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cranes/1
  # PUT /cranes/1.xml
  def update
    @crane = Crane.find(params[:id])

    respond_to do |format|
      if @crane.update_attributes(params[:crane])
        format.html { redirect_to(@crane, :notice => 'Crane was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cranes/1
  # DELETE /cranes/1.xml
  def destroy
    @crane = Crane.find(params[:id])
    @crane.destroy

    respond_to do |format|
      format.html { redirect_to(cranes_url) }
      format.xml  { head :ok }
    end
  end
end
