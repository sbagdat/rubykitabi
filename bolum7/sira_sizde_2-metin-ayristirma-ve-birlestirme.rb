#encoding: utf-8

def metin_birlestir(dizi)
  metinler = dizi.select {|eleman| eleman.is_a?(String)}
  metinler.join(" ")
end

puts metin_birlestir([3,'Metin','okula',36,true,25.8,'gidiyor.'])