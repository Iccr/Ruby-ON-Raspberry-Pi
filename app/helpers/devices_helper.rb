module DevicesHelper

  def device_name device
    device.name.capitalize unless device.name.blank? if device.present?
  end
end
