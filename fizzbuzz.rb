arr = Array.new(1..100)

arr.map do |t|
  if t % 4 == 0 && t % 5 == 0
    t = "FizzBuzz"
  elsif t % 4 == 0
    t = "Fizz"
  elsif t % 5 == 0 
    t = "Buzz"
  end
  
        