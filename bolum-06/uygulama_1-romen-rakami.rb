# encoding: utf-8

def romen_karsiligi(sayi)
  birler_basamagi = sayi % 10
  onlar_basamagi = (sayi % 100) / 10
  yuzler_basamagi = (sayi % 1000) / 100
  binler_basamagi = sayi.div(1000)
  romen_rakami = ""
  if binler_basamagi > 0
    romen_rakami += "M" * binler_basamagi
  end
  if yuzler_basamagi == 9
    romen_rakami += "CM"
  elsif yuzler_basamagi == 4
    romen_rakami += "CD"
  elsif yuzler_basamagi > 4
    romen_rakami += "D"
    romen_rakami += "C" * (yuzler_basamagi - 5).to_i
  elsif yuzler_basamagi > 0
    romen_rakami += "C" * yuzler_basamagi
  end

  if onlar_basamagi == 9
    romen_rakami += "XC"
  elsif onlar_basamagi == 4
    romen_rakami += "XL"
  elsif onlar_basamagi > 4
    romen_rakami += "L"
    romen_rakami += "X" * (onlar_basamagi - 5).to_i
  elsif onlar_basamagi > 0
    romen_rakami += "X" * onlar_basamagi
  end

  if birler_basamagi == 9
    romen_rakami += "IX"
  elsif birler_basamagi == 4
    romen_rakami += "IV"
  elsif birler_basamagi > 4
    romen_rakami += "V"
    romen_rakami += "I" * (birler_basamagi - 5).to_i
  elsif birler_basamagi > 0
    romen_rakami += "I" * birler_basamagi
  end

  romen_rakami

end

print "Onluk sistemde, 1-9999 arası bir tamsayı giriniz:"
sayi = gets.chomp.to_i


puts "Romen rakamlarıyla karşılığı: #{ romen_karsiligi (sayi)}"

