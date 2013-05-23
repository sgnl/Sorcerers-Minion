class PortalPagesController < ApplicationController
  def home
  end

  def contact
  end

  def rewards
  	@missions = []

    unless params[:search].nil? || params[:search].strip.empty?
      @search = Mission.search(params[:search])
      @missions = @search
    end

    @missions


    respond_to do |format|
      format.html # index.html.erb
      format.csv { render :text => Mission.to_csv }
      format.json { render json: @missions }
    end
  end
end
