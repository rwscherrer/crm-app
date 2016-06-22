class Api::V1::RequestsController < ApplicationController
  def index
    if current_user
      @requests = Company.where(user_id: current_user.id)
      render 'index.json.jbuilder'
    else
      redirect_to '/'
    end
  end

  def create
    Inquiry.create(
      user_id: 1,
      first_name: 'test-5'
    )
  end
end