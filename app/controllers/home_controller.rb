class HomeController < ApplicationController
  include Pagy::Frontend

  def index
    @subjects = Subject.all
    @pagy, @notes = pagy(Note.order('created DESC'))
  end
end
