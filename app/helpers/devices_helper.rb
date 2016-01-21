module DevicesHelper

  def device_name device
    device.name.capitalize unless device.name.blank? if device.present?
  end

  def action device
    if device.status
      "start"
    else
      "stop"
    end
  end
end
