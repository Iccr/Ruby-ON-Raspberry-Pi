class DevicesController < ApplicationController
  def index
    @devices = current_user.devices
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @user = User.find(params[:user_id])
    @device = Device.new
  end

  def create
    device = Device.new(device_params)
    device.user_id = current_user.id
    if device.save
      flash[:msg] = "device added"
    else
      flash[:msg] = "device could not be created. Try again"
    end
    redirect_to root_path
  end

  def status
    user = params[:user_id]
    device = params[:device_id]
    device.status = params[:status]
    device.update!(device_params)
  end

  def destroy
  end

  private

  def device_params
    params.require('device').permit(:name, :status)
  end
end
