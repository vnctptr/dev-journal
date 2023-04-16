class HomeController < ApplicationController
  include Pagy::Frontend

  def index
    @subjects = Subject.all
    @pagy, @notes = pagy(Note.order('created DESC'))
    @tags = Tag.all
  end

  def search
    @subjects = Subject.all
    if params[:search].blank?
      redirect_to root_path and return
    else 
      @parameter = params[:search].downcase
      @results = Note.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
    end
  end
end
