# Why not use Inheritance for everything?
# Problems with Inheritance
#   1. Objects can inherit too much
#      (inherits all methods from parent class)
#   2. A class can only inherit from one class

class Device
  def init(screensize)
    @screensize = screensize
    @power_status = "off"
    @number_of_usb_ports = 2
  end

  def turn_on
    @power_status = "on"
  end
end

class Laptop < Device
end

class Smartphone < Device
end

# Smartphone has to choose inheriting from Phone or Device class
# If you introduce a new behavior, e.g. @number_of_usb_ports,
#   it will affect both child classes
#   but you may not want that in all cases
#   eg: Laptop may have @number_of_usb_ports,
#       but SmartPhone may not have @number_of_usb_ports
