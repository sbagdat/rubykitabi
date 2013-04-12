#encoding: utf-8

def tamsayi_mi?(dizi)
  dizi.all? {|eleman| eleman.is_a? Integer}
end

dizi = [1, 3, 45, 69, 78, 52, 18]
if tamsayi_mi?(dizi)
  puts "Hepsi tamsayı!"
else
  puts "Hepsi tamsayı değil!"
end

dizi = [1, 3, 'metin', 69, 78, 52, 18]
if tamsayi_mi?(dizi)
  puts "Hepsi tamsayı!"
else
  puts "Hepsi tamsayı değil!"
end