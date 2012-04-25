class TaggablesController < ApplicationController
  # GET /taggables
  # GET /taggables.json
  def index
    @taggables = current_user.taggables
    @taggable_center = current_user.taggables.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taggables }
    end
  end

  # GET /taggables/1
  # GET /taggables/1.json
  def show
    @taggable = current_user.taggables.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taggable }
    end
  end

  # GET /taggables/new
  # GET /taggables/new.json
  def new
    @taggable = current_user.taggables.new(:user_id => current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taggable }
    end
  end

  # GET /taggables/1/edit
  def edit
    @taggable = Taggable.find(params[:id])
  end

  # POST /taggables
  # POST /taggables.json
  def create
    @taggable = current_user.taggables.new(params[:taggable], :user_id => current_user.id)

    respond_to do |format|
      if @taggable.save
        format.html { redirect_to @taggable, notice: 'Taggable was successfully created.' }
        format.json { render json: @taggable, status: :created, location: @taggable }
      else
        format.html { render action: "new" }
        format.json { render json: @taggable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taggables/1
  # PUT /taggables/1.json
  def update
    @taggable = current_user.taggables.find(params[:id])

    respond_to do |format|
      if @taggable.update_attributes(params[:taggable])
        format.html { redirect_to @taggable, notice: 'Taggable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taggable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taggables/1
  # DELETE /taggables/1.json
  def destroy
    @taggable = current_user.taggables.find(params[:id])
    @taggable.destroy

    respond_to do |format|
      format.html { redirect_to taggables_url }
      format.json { head :no_content }
    end
  end
end
