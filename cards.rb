cards = %w[Jack Queen King Ace Joker]

puts "\nShuffled"
cards.shuffle.each { |card| puts "#{card.upcase} - #{card.size}" }

puts "\nReversed"
cards.reverse_each { |card| puts "#{card.upcase} - #{card.size}" }

puts "\nScores"
scores = { 'Larry' => 10, 'Moe' => 8, 'Curly' => 12 }

scores.each do |k, v|
  puts "#{k} scored a #{v}!"
end
