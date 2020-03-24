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

Benchmark.bm(27) do |bm|
  bm.report('using ternary') do
    iterations.times do
      prime?(111156)
    end
  end

  bm.report('using if-else') do
    iterations.times do
      prime_2?(111156)
    end
  end
end
