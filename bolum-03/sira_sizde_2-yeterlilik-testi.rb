# encoding:utf-8
diller = ["HTML", "CSS", "JavaScript", "Ruby", "Ruby on Rails", "Sinatra"]
toplam_yeterlilik = 0
sayi = 0

while sayi < diller.length

  print "#{diller[sayi]} dilini kullanabiliyor musunuz?(E/H): "
  if gets.chomp.upcase == 'E'
    toplam_yeterlilik  = toplam_yeterlilik + 1
  end

  sayi = sayi + 1
end

if toplam_yeterlilik >3
  puts "Tebrikler! Mülakata katılmaya hak kazandınız."
else
  puts "Biz, sizi ararız(emin olun)!"
end
