class AboutController < ApplicationController
  def index
    @subjects = Subject.all
  end
end
