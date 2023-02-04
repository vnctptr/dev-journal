class HomeController < ApplicationController
  def index
    @subjects = Subject.all
    @notes = Note.all
  end
end
