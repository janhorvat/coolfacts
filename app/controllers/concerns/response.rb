module Concerns::Response
  extend ActiveSupport::Concern

  def success_response(content={})
    render json: content, status: 200
  end

  def error_response(message, error_code, status)
    render json: {
      errorCode: error_code,
      errorMessage: message
    }, status: status
  end
end
