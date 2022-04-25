class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |n|
  flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", n * 1000)
end

puts flyers

flyers.each do |f|
  puts "#{f.name} - #{f.miles_flown} miles"
end

total_miles = flyers.reduce(0) { |sum, n| sum + n.miles_flown }
puts "Total miles flown #{total_miles}"

promotions = { 'United' => 1.5, 'Delta' => 2.0, 'Lufthansa' => 2.5 }

promotions.each do |k, v|
  puts "Earn #{v}x miles by flying #{k}"
end
