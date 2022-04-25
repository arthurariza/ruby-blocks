class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status = :bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new('Larry', 'larry@example.com', 4000, :platinum)
flyers << Flyer.new('Moe', 'moe@example.com', 1000)
flyers << Flyer.new('Curly', 'curly@example.com', 3000, :gold)
flyers << Flyer.new('Shemp', 'shemp@example.com', 2000)

frequent_customers, incentive_customers = flyers.partition { |f| f.miles_flown >= 3000 }
puts 'frequent_customers'
puts frequent_customers
puts 'incentive_customers'
puts incentive_customers

puts platinum_customers = flyers.any? { |f| f.status == :platinum }

first_bronze_customer = flyers.detect { |f| f.status == :bronze }
puts first_bronze_customer

platinum_customers, coach_customers = flyers.partition { |f| f.status == :platinum }
puts 'platinum_customers'
puts platinum_customers
puts 'coach_customers'
puts coach_customers

pretty_names = flyers.map { |f| "#{f.name} (#{f.status.upcase})" }
p pretty_names

distance_in_km = flyers.map { |f| "#{f.name} (#{f.miles_flown * 1.6}) Km" }
puts distance_in_km

total_distance_in_km = flyers.reduce(0) { |sum, f| sum + (f.miles_flown * 1.6) }
puts total_distance_in_km
