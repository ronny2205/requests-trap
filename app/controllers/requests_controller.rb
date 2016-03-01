class RequestsController < ApplicationController

  # Receiving a request at /:trap_id
  def new 
  	new_request = Request.create(:trap_name => params[:trap_id], :request_info => request.env, 
  		:remote_ip => request.remote_ip, :method => request.method, :scheme => request.scheme, 
  		:req_params => request.parameters)
  end 	

  # Presenting all requests related to the trap
  # at /:trap_id/requests
  def index
  	@requests = Request.where(:trap_name => params[:trap_id]).order('created_at DESC')	    
  end	

  # Presenting a specific request
  # at /:trap_id/requests/:id
  def show
     @req = Request.where(:id => params[:id]).first
  end

  private

  	
end
