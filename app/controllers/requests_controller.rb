class RequestsController < ApplicationController

  # Get a request to /:trap_id
  def new 
  	#req = request.env["REQUEST_URI"]
  	@new_request = Request.create(:trap_name => params[:trap_id], :request_info => request.env)
  	#new_request = Request.new trap_name: params[:trap_id], request_info: request.env

  end 	

  # /:trap_id/requests
  def index
  	@requests = Request.where(:trap_name => params[:trap_id])	    
  end	

  # /:trap_id/requests/:id
  def show

  end

  private

  # def request_params
  #   params.require(:request).permit(:trap_name, :request_info)
  # end
  	
end
