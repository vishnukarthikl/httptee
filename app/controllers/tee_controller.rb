class TeeController < ApplicationController

  def index
    @requests = Request.all().order(:created_at).reverse_order
  end

  def create
    req = Request.new({data:request.raw_post.force_encoding('utf-8')})
    if req.save
      render json: {success: :true}
    else
      render json: {success: :false}
    end
  end
end
