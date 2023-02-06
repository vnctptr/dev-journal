class HomeController < ApplicationController
  def index
    @subjects = Subject.all
    @notes = Note.order('created DESC').first(5)
  end
end
