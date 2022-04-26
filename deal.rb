def deal(number_of_cards)
  return puts 'No deal!' unless block_given?

  faces = %w[Jack Queen King Ace]
  suits = %w[Hearts Diamonds Spades Clubs]

  1.upto(number_of_cards) do
    random_face = faces.sample
    random_suit = suits.sample
    yield random_face, random_suit
    puts "You scored a #{random_face.size + random_suit.size}!"
  end
end

deal(3) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
end

deal(3)
