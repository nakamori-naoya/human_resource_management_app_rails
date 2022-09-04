class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController


  private 
  def render_create_error
    return render json: { type: :invalid_request_error, messages: @resource.errors }, status: :unprocessable_entity 
  end

end
