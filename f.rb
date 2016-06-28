module Blabla
  def self.method_1
    puts 'method 1'
  end

  def method_2
    puts 'method 2'
  end
end

class ClassBlabla
  include Blabla
  
  def test
    puts 'test'
    Blabla::method_1
    self.method_2
    method_2
  end
end
