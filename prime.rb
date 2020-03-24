require 'benchmark'

def prime?(int)

  int <= 1 ? false : (2...int).to_a.none? {|x| int % x == 0}

end
