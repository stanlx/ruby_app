class BlasController < ApplicationController
  # GET /blas
  # GET /blas.json
  def index
    @blas = Bla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @blas }
    end
  end

  # GET /blas/1
  # GET /blas/1.json
  def show
    @bla = Bla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bla }
    end
  end

  # GET /blas/new
  # GET /blas/new.json
  def new
    @bla = Bla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bla }
    end
  end

  # GET /blas/1/edit
  def edit
    @bla = Bla.find(params[:id])
  end

  # POST /blas
  # POST /blas.json
  def create
    @bla = Bla.new(params[:bla])

    respond_to do |format|
      if @bla.save
        format.html { redirect_to @bla, :notice => 'Bla was successfully created.' }
        format.json { render :json => @bla, :status => :created, :location => @bla }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bla.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blas/1
  # PUT /blas/1.json
  def update
    @bla = Bla.find(params[:id])

    respond_to do |format|
      if @bla.update_attributes(params[:bla])
        format.html { redirect_to @bla, :notice => 'Bla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bla.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blas/1
  # DELETE /blas/1.json
  def destroy
    @bla = Bla.find(params[:id])
    @bla.destroy

    respond_to do |format|
      format.html { redirect_to blas_url }
      format.json { head :no_content }
    end
  end
end
