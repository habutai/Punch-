GLOBAL_VAR = "Hi, I'm a global variable"

def func
  local_var = "hi, I'm a local variable"
  puts "can I use that global var?"
  puts GLOBAL_VAR
  puts "can I use that local var?"
  puts local_var
end

def another_func
  puts "can I use that global var?"
  puts GLOBAL_VAR
  puts "can I use that local var?"
  puts local_var
end 

class Person
  def initialize(name)
    self.name = name
  end
  
  #setter
  def name=(name)
    @asdf = name
  end
  
  #getter
  def name
    @asdf
  end
  
  def use_self
    puts self.name
  end
end


  