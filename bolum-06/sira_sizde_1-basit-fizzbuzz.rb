# encoding: utf-8

sayi = 1
while sayi<101
  if sayi % 15 == 0
    puts "FizzBuzz"
  elsif sayi % 3 == 0
    puts "Fizz"
  elsif sayi % 5 == 0
    puts "Buzz"
  else
    puts sayi
  end
  sayi += 1
end