require_relative 'car_creater.rb'
system "clear"

$car1 = CarStats.new("Ferarri", "LeFerrari", "217", "2.9", "16.6")
$car2 = CarStats.new("Lamburghini", "Huracan", "202", "3.2", "15")
$car3 = CarStats.new("Koenigsegg", "Agera R", "273", "2.7", "16")
$car4 = CarStats.new("Porshe", "9/11", "197", "2.9", "17") 
$car5 = CarStats.new("McLaren", "P1", "217", "2.8", "18")

puts "Welcome to Tristan's Patented Car Shop!"
sleep 0.5
puts "We Find the Best Cars on the Market."
sleep 0.5
puts "Would You Like to See Them? (yes/no)"
$ans = gets.chomp

def question(a)
if a == "no"
	then puts "Hope to See You Again!"
	abort
elsif a == "yes"
	then puts "Alright, Step Right In..."
	$final = "yes"
else
	puts "Undefined Answer..."
	sleep 1
	abort
end
end

def showcars
	puts "1, Ferrari LeFerrari (2015)"
	puts "2, Lamborghini Huracan (2015)"
	puts "3, Koenigsegg Agera R (2011)"
	puts "4, Porsche 9/11 (2015)"
	puts "5, McLaren P1 (2013)"
end

question($ans)

def carstats
puts "What do you want to know about it?"
puts "1, Company"
puts "2, Model"
puts "3, Top Speed"
puts "4, Acceleration"
puts "5, MPG"
puts "Pick a choice (1-5)"
$want = gets.to_i

case $want
	when 1
		case $car
			when 1
				puts $car1.company
			when 2
				puts $car2.company
			when 3
				puts $car3.company
			when 4
				puts $car4.company
			when 5
				puts $car5.company
		end	
	when 2
		case $car
			when 1
				puts $car1.model
			when 2
				puts $car2.model
			when 3
				puts $car3.model
			when 4
				puts $car4.model
			when 5
				puts $car5.model
		end	
	when 3
		case $car
			when 1
				puts $car1.topspeed.to_s + " MPH"
			when 2
				puts $car2.topspeed.to_s + " MPH"
			when 3
				puts $car3.topspeed.to_s + " MPH"
			when 4
				puts $car4.topspeed.to_s + " MPH"
			when 5
				puts $car5.topspeed.to_s + " MPH"
		end
	when 4
		case $car
			when 1
				puts "0 - 60 MPH in " + $car1.acceleration.to_s + " seconds"
			when 2
				puts "0 - 60 MPH in " + $car2.acceleration.to_s + " seconds"
			when 3
				puts "0 - 60 MPH in " + $car3.acceleration.to_s + " seconds"
			when 4
				puts "0 - 60 MPH in " + $car4.acceleration.to_s + " seconds"
			when 5
				puts "0 - 60 MPH in " + $car5.acceleration.to_s + " seconds"
		end
	when 5
		case $car
			when 1
				puts $car1.mpg.to_s + " Miles Per Gallon"
			when 2
				puts $car2.mpg.to_s + " Miles Per Gallon"
			when 3
				puts $car3.mpg.to_s + " Miles Per Gallon"
			when 4
				puts $car4.mpg.to_s + " Miles Per Gallon"
			when 5
				puts $car5.mpg.to_s + " Miles Per Gallon"
		end
	end
end

def pickcar
	showcars
        puts "Pick A Car From Our Great Selection... (1-5)"

        $select = gets.to_i

        case $select
                when 1
                        puts "You have selected Ferrari Lefarrari (2015)"        
                        $car = 1
                when 2
                        puts "You have selected Lamborghini Huracan (2015)"
                        $car = 2
                when 3
                        puts "You have selected Koenigsegg Agera (2011)"
                        $car = 3        
                when 4
                        puts "You have selected Porshe 9/11 (2015)"
                        $car = 4
                when 5
                        puts "You have selected McLaren P1 (2013)"
                        $car = 5
        end
carstats
end

if $final == "yes"
        pickcar
else
        puts "Hope to see you again soon!"
        abort
end

def racecar(r)
	case r
		when 1
			puts "You have chosen to race against the Ferrari Lefferari"
			$racer = 1
		when 2
			puts "You have chosen to race against the Lamburghini Huracan"
			$racer = 2
		when 3
			puts "You have chosen to race against the Koenigsegg Agera R"
			$racer = 3
		when 4 
			puts "You have chosen to race against the Porshe 9/11"
			$racer = 4
		when 5	
			puts "You have chosen to race against the McLaren P1"
			$racer = 5
	end

	sleep 1
	system "clear"
	puts "Begginning race in"
	sleep 1
	system "clear"
	puts "3"
	sleep 1
	system "clear"
	puts "2"
	sleep 1
	system "clear"
	puts "1"
	sleep 1
	system "clear"
	puts "GO!"
end

def whowins
case $car
	when 1
		case $racer
			when 1
				puts "You can't race against your own car" 
				abort
			when 2
				$winner = $car
			when 3
				$winner = $racer
			when 4
				$winner = $racer
			when 5
				$winner = $racer
		end
	when 2			
		case $racer
			when 1
				$winner = $racer
			when 2
				puts "You can't race against your own car"
				abort
			when 3
				$winner = $racer
			when 4
				$winner = $racer
			when 5
				$winner = $racer
		end
	when 3
		case $racer
			when 1
				$winner = $car
			when 2
				$winner = $car
			when 3
				puts "You can't race against your own car"
				abort
			when 4
				$winner = $car
			when 5
				$winner = $car
		end
	when 4
		case $racer
			when 1
				$winner = $racer
			when 2
				$winner = $car
			when 3
				$winner = $racer
			when 4
				puts "You can't race against your own car"
				abort
			when 5
				$winner = $racer
		end
	when 5
		case $racer
			when 1
				$winner = $car
			when 2
				$winner = $car
			when 3
				$winner = $racer
			when 4	
				$winner = $car
			when 5
				puts "You can't race against your own car"
		end
	end
end

i = 1
while i == 1 
	puts "Would you like to race this car?"
	response3 = gets.chomp
	if response3 == "yes"
		puts "What car would you like to race against?"
		showcars
		$response4 = gets.to_i
		racecar($response4)
		whowins
		if $winner == $car
		then 
		puts "The race has concluded..."
			sleep 1
			puts "YOU WON!"
		elsif $winner == $racer
			puts "The race has concluded..."
			sleep 1	
			puts "YOU LOST!"
		end
	else		
		puts "Would you like to see anymore of the car's stats? (yes or no)"
		response = gets.chomp
		if response == "no"
		then	
			puts "Do you wanna pick a new car? (yes or no)"
			response2 = gets.chomp
			if response2 == "yes"
			then
				system "clear"
				pickcar
			else	
				puts "Hope to see you again soon!"
				sleep 1
				abort
			end
		elsif response == "yes"
			system "clear"
			carstats
		end
	end
end

