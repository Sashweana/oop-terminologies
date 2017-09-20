# Composition solves this by
#   making objects composed of other objects

class Laptop
  attr_reader :screen, :keyboard

  def initialize
    @screen = Screen.new
    @keyboard = Keyboard.new
  end
end

class Screen
  attr_reader :size, :brightness

  def initialize
    @brightness = 50
  end

  def make_it_brighter
    @brightness += 10
  end
end

class Keyboard
end

macbook = Laptop.new
p macbook

# Example of Laptop object you'll get
# It contains Screen object and Keyboard object as attributes
# <Laptop:0x007ff10984ae70
#   @screen= <Screen:0x007ff10984ae48 @brightness=50>,
#   @keyboard= <Keyboard:0x007ff10984ae20>>

# Compared to inheritance
class Phone
  attr_reader :brand
  def initialize(brand)
    @brand = brand
  end
end

class Smartphone < Phone
end

phone = Smartphone.new('Samsung')
p phone
