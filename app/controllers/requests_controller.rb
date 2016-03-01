class RequestsController < ApplicationController

  # Get a request to /:trap_id
  def new 
  	@new_request = Request.create(:trap_name => params[:trap_id], :request_info => request.env, 
  		:remote_ip => request.remote_ip, :method => request.method, :scheme => request.scheme, 
  		:req_params => request.parameters)
  end 	

  # /:trap_id/requests
  def index
  	@requests = Request.where(:trap_name => params[:trap_id]).order('created_at DESC')	    
  end	

  # /:trap_id/requests/:id
  def show

  end

  private

  # def request_params
  #   params.require(:request).permit(:trap_name, :request_info)
  # end
  	
end
