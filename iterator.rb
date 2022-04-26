def three_times(&block)
  1.upto(3, &block)
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

def n_times(n)
  times = 1
  loop do
    yield(times)
    times += 1
    break if times > n
  end
end
puts "\n\n n_times"
n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
