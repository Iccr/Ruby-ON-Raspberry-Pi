module DevicesHelper

  def device_name device
    device.name.capitalize unless device.name.blank? if device.present?
  end

  def action device
    if device.status
      "Click to stop"
    else
      "Click to start"
    end
  end
end
