class RequestsController < ApplicationController

  # Receiving a request at /:trap_id
  def new 
  	new_request = Request.create(:trap_name => params[:trap_id], :request_info => request.env, 
  		:remote_ip => request.remote_ip, :method => request.method, :scheme => request.scheme, 
  		:req_params => request.parameters)
  	if new_request.save
      render :nothing => true, :status => 200
    else
      render :nothing => true, :status => 400
    end
  end 	

  # Presenting all requests related to the trap
  # at /:trap_id/requests
  def index
  	@requests = Request.where(:trap_name => params[:trap_id]).order('created_at DESC')	    
    if @requests.blank?
	   render :text => "404 Not Found", :status => :not_found
	end
  end	

  # Presenting a specific request
  # at /:trap_id/requests/:id
  def show
     @req = Request.where(:id => params[:id]).first
     if @req.blank?
	   render :text => "404 Not Found", :status => :not_found
	 end
  end

  private

  	
end
