# Duck typing
# Objects should only know about the
#   public interface of other objects,
#   everything private is hidden!
#
# As long as two object responds the same way to the same methods,
# you can consider them the same object for that line of code

# example
class OrangeTree
  def initialize
    @height = 0
  end

  def grow!
    @height += 10
    # puts "It has grown!"
  end
end

class MapleTree
  def initialize
    @height = 0
  end

  def grow!
    @height += 5
    # puts "It has grown!"
  end
end

#both tree function the same based only on what is printed out
#both trees function very differently internally
farm = []
farm << OrangeTree.nsew
farm << MapleTree.new
farm.each do |tree|
  tree.grow!
  p tree
end

# Another way of implementing duck typing
class FarmFairy
  def grow(tree)
    tree.grow!
  end
end

orange_tree = OrangeTree.new
maple_tree  MapleTree.new
fairy = FarmFairy.new
fairy.grow(maple_tree)
