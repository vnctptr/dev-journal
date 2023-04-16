class AboutController < ApplicationController
  def index
    @subjects = Subject.all
    @tags = Tag.all

  end
end
