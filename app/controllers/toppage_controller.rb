class ToppageController < ApplicationController
  def index
    @picposts = Picpost.order('id DESC').limit(15)
  end
end
