class SiteController < ApplicationController
  def home
    @circuits = Circuit.all.order(name: :asc)
  end
end
