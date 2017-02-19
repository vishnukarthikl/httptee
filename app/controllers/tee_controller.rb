class TeeController < ApplicationController

  def index
    @requests = Request.all()
  end

  def create
    req = Request.new({data:request.raw_post})
    if req.save
      render json: {success: :true}
    else
      render json: {success: :false}
    end
  end
end
