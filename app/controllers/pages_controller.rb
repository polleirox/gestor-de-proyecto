class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
  end

  def dashboard
    if params[:state].present?
      @project = Project.where('state Like ?', params[:state])
    else 
      @project = Project.all
    end
  end

  def create
    @project = Project.create(name: params[:name], description: params[:description], start: params[:start], end: params[:end], state: params[:state])
  end
end
