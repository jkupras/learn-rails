class VisitorsController < ApplicationController
  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.create(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Singed up #{@visitor.email}}."
      redirect_to new_visitor_path
    else
    redirect_to new_visitor_path
  end
  end

private
  def secure_params
    params.required(:visitor).permit(:email)
  end
end
