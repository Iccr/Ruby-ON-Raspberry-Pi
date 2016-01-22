class DevicesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @device = Device.new
    @devices = current_user.devices.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
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
    device = Device.find(params[:id])
    status = !device.status
    device.update!(:status=>status)
    redirect_to root_path
  end

  def destroy
  end

  private

  def device_params
    params.require('device').permit(:name)
  end
end
