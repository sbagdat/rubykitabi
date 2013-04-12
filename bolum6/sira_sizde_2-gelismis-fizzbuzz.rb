# encoding: utf-8

def fizzbuzz(sayi1, sayi2)
  sayi = 1
  sayac = [0, 0, 0]

  while sayi<101
    if sayi % (sayi1 * sayi2) == 0
      puts "FizzBuzz"
      sayac[2] += 1
    elsif sayi % sayi1 == 0
      puts "Fizz"
      sayac[0] += 1
    elsif sayi % sayi2 == 0
      puts "Buzz"
      sayac[1] += 1
    else
      puts sayi
    end
    sayi += 1
  end

  puts "Fizz sayısı: #{sayac[0]}"
  puts "Buzz sayısı: #{sayac[1]}"
  puts "FizzBuzz sayısı: #{sayac[2]}"

  # Toplamlar için kısa yol
  # puts 100.quo(sayi1).to_i - 100.quo(sayi1*sayi2).to_i
  # puts 100.quo(sayi2).to_i - 100.quo(sayi1*sayi2).to_i
  # puts 100.quo(sayi1*sayi2).to_i
end

fizzbuzz(7, 11)
fizzbuzz(5, 9)