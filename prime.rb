require 'benchmark'

def prime?(int)

  int <= 1 ? false : (2...int).to_a.none? {|x| int % x == 0}

end

def prime_2?(int)

  if int <= 1
    return false
  else
    arr = (2...int).to_a
    arr.none? {|x| int % x == 0}
  end
end

puts Benchmark.measure { prime?(17) }
puts Benchmark.measure { prime_2?(17) }
