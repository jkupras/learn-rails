class VisitorsController < ApplicationController
  def new
    @owner = Owner.new
    flash.now[:alert] = 'Welcome1alert!'
        flash.now[:notice] = 'Welcome2notice!'
  end
end
