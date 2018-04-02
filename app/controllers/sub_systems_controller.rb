class SubSystemsController < ApplicationController
  def laneline_detection
  end

  def steering_control
  end

  def traffic_sign_recognition
  end

  def vehicle_detection
  end

  def detect_laneline
  	session[:return_to] ||= request.referer
  	system('./laneline public/videos/solidWhiteRight.mp4')
  	redirect_to session.delete(:return_to)
  end
end
