# encoding:utf-8

def faktoriyel(n)
  sonuc = 1

  while n > 1
    sonuc = sonuc * n
    n = n - 1
  end

  puts "İşlemin sonucu: #{sonuc}"
end

faktoriyel(5)
faktoriyel(10)
faktoriyel(15)
